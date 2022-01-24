#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_13__ {scalar_t__ trueColor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int,int) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int,int) ; 
 scalar_t__ FUNC10 (int) ; 
 int gdMaxColors ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (int,int) ; 

void FUNC16 (gdImagePtr dst, gdImagePtr src, int dstX, int dstY, int srcX, int srcY, int dstW, int dstH, int srcW, int srcH)
{
	int c;
	int x, y;
	int tox, toy;
	int ydest;
	int i;
	int colorMap[gdMaxColors];
	/* Stretch vectors */
	int *stx, *sty;

	if (FUNC15(sizeof(int), srcW)) {
		return;
	}
	if (FUNC15(sizeof(int), srcH)) {
		return;
	}

	stx = (int *) FUNC10 (sizeof (int) * srcW);
	sty = (int *) FUNC10 (sizeof (int) * srcH);

	/* Fixed by Mao Morimoto 2.0.16 */
	for (i = 0; (i < srcW); i++) {
		stx[i] = dstW * (i+1) / srcW - dstW * i / srcW ;
	}
	for (i = 0; (i < srcH); i++) {
		sty[i] = dstH * (i+1) / srcH - dstH * i / srcH ;
	}
	for (i = 0; (i < gdMaxColors); i++) {
		colorMap[i] = (-1);
	}
	toy = dstY;
	for (y = srcY; (y < (srcY + srcH)); y++) {
		for (ydest = 0; (ydest < sty[y - srcY]); ydest++) {
			tox = dstX;
			for (x = srcX; (x < (srcX + srcW)); x++) {
				int nc = 0;
				int mapTo;
				if (!stx[x - srcX]) {
					continue;
				}
				if (dst->trueColor) {
					/* 2.0.9: Thorben Kundinger: Maybe the source image is not a truecolor image */
					if (!src->trueColor) {
					  	int tmp = FUNC4 (src, x, y);
		  				mapTo = FUNC6 (src, x, y);
					  	if (FUNC5 (src) == tmp) {
							/* 2.0.21, TK: not tox++ */
							tox += stx[x - srcX];
					  		continue;
					  	}
					} else {
						/* TK: old code follows */
					  	mapTo = FUNC6 (src, x, y);
						/* Added 7/24/95: support transparent copies */
						if (FUNC5 (src) == mapTo) {
							/* 2.0.21, TK: not tox++ */
							tox += stx[x - srcX];
							continue;
						}
					}
				} else {
					c = FUNC4 (src, x, y);
					/* Added 7/24/95: support transparent copies */
					if (FUNC5 (src) == c) {
					      tox += stx[x - srcX];
					      continue;
					}
					if (src->trueColor) {
					      /* Remap to the palette available in the destination image. This is slow and works badly. */
					      mapTo = FUNC3(dst, FUNC14(c),
					      					    FUNC13(c),
					      					    FUNC12(c),
					      					    FUNC11 (c));
					} else {
						/* Have we established a mapping for this color? */
						if (colorMap[c] == (-1)) {
							/* If it's the same image, mapping is trivial */
							if (dst == src) {
								nc = c;
							} else {
								/* Find or create the best match */
								/* 2.0.5: can't use gdTrueColorGetRed, etc with palette */
								nc = FUNC3(dst, FUNC8(src, c),
												   FUNC7(src, c),
												   FUNC2(src, c),
												   FUNC1(src, c));
							}
							colorMap[c] = nc;
						}
						mapTo = colorMap[c];
					}
				}
				for (i = 0; (i < stx[x - srcX]); i++) {
					FUNC9 (dst, tox, toy, mapTo);
					tox++;
				}
			}
			toy++;
		}
	}
	FUNC0 (stx);
	FUNC0 (sty);
}