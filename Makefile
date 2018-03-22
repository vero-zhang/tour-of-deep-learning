latexfile = tour-of-deep-learning

all: prepare pdf

prepare:
	mkdir -p output

pdf: $(latexfile).tex
	xelatex --output-directory=output $(latexfile).tex

clean:
	rm -rf output

.PHONY: all prepare clean
