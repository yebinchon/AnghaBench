#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_9__ {int transparent; int /*<<< orphan*/ * alpha; int /*<<< orphan*/ * blue; int /*<<< orphan*/ * green; int /*<<< orphan*/ * red; scalar_t__ trueColor; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int) ; 
 int gdMaxColors ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void FUNC10 (gdImagePtr dst, gdImagePtr src, int dstX, int dstY, int srcX, int srcY, int w, int h)
{
	int c;
	int x, y;
	int tox, toy;
	int i;
	int colorMap[gdMaxColors];

	if (dst->trueColor) {
		/* 2.0: much easier when the destination is truecolor. */
		/* 2.0.10: needs a transparent-index check that is still valid if
		 * the source is not truecolor. Thanks to Frank Warmerdam.
		 */

		if (src->trueColor) {
			for (y = 0; (y < h); y++) {
				for (x = 0; (x < w); x++) {
					int c = FUNC3 (src, srcX + x, srcY + y);
					if (c != src->transparent) {
						FUNC4 (dst, dstX + x, dstY + y, c);
					}
				}
			}
		} else {
			/* source is palette based */
			for (y = 0; (y < h); y++) {
				for (x = 0; (x < w); x++) {
					int c = FUNC1 (src, srcX + x, srcY + y);
					if (c != src->transparent) {
						FUNC4(dst, dstX + x, dstY + y, FUNC5(src->red[c], src->green[c], src->blue[c], src->alpha[c]));
					}
				}
			}
		}
		return;
	}

	/* Palette based to palette based */
	for (i = 0; i < gdMaxColors; i++) {
		colorMap[i] = (-1);
	}
	toy = dstY;
	for (y = srcY; y < (srcY + h); y++) {
		tox = dstX;
		for (x = srcX; x < (srcX + w); x++) {
			int nc;
			int mapTo;
			c = FUNC1 (src, x, y);
			/* Added 7/24/95: support transparent copies */
			if (FUNC2 (src) == c) {
				tox++;
				continue;
			}
			/* Have we established a mapping for this color? */
			if (src->trueColor) {
				/* 2.05: remap to the palette available in the destination image. This is slow and
				 * works badly, but it beats crashing! Thanks to Padhrig McCarthy.
				 */
				mapTo = FUNC0 (dst, FUNC9 (c), FUNC8 (c), FUNC7 (c), FUNC6 (c));
			} else if (colorMap[c] == (-1)) {
				/* If it's the same image, mapping is trivial */
				if (dst == src) {
					nc = c;
				} else {
					/* Get best match possible. This function never returns error. */
					nc = FUNC0 (dst, src->red[c], src->green[c], src->blue[c], src->alpha[c]);
				}
				colorMap[c] = nc;
				mapTo = colorMap[c];
			} else {
				mapTo = colorMap[c];
			}
			FUNC4 (dst, tox, toy, mapTo);
			tox++;
		}
		toy++;
	}
}