#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ gdImagePtr ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 int FUNC1 (scalar_t__,int,int,int) ; 
 int FUNC2 (scalar_t__,int,int,int) ; 
 int FUNC3 (scalar_t__,int,int,int) ; 
 int FUNC4 (scalar_t__,int,int) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__,int) ; 
 int FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int,int,int) ; 

void FUNC9 (gdImagePtr dst, gdImagePtr src, int dstX, int dstY, int srcX, int srcY, int w, int h, int pct)
{
	int c, dc;
	int x, y;
	int tox, toy;
	int ncR, ncG, ncB;
	float g;
	toy = dstY;

	for (y = srcY; (y < (srcY + h)); y++) {
		tox = dstX;
		for (x = srcX; (x < (srcX + w)); x++) {
			int nc;
			c = FUNC4 (src, x, y);
			/* Added 7/24/95: support transparent copies */
			if (FUNC5(src) == c) {
				tox++;
				continue;
			}

			/*
			 * If it's the same image, mapping is NOT trivial since we
			 * merge with greyscale target, but if pct is 100, the grey
			 * value is not used, so it becomes trivial. pjw 2.0.12.
			 */
			if (dst == src && pct == 100) {
				nc = c;
			} else {
				dc = FUNC4(dst, tox, toy);
				g = (0.29900f * FUNC7(dst, dc)) + (0.58700f * FUNC6(dst, dc)) + (0.11400f * FUNC0(dst, dc));

				ncR = (int)(FUNC7 (src, c) * (pct / 100.0f) + g * ((100 - pct) / 100.0));
				ncG = (int)(FUNC6 (src, c) * (pct / 100.0f) + g * ((100 - pct) / 100.0));
				ncB = (int)(FUNC0 (src, c) * (pct / 100.0f) + g * ((100 - pct) / 100.0));


				/* First look for an exact match */
				nc = FUNC3(dst, ncR, ncG, ncB);
				if (nc == (-1)) {
					/* No, so try to allocate it */
					nc = FUNC1(dst, ncR, ncG, ncB);
					/* If we're out of colors, go for the closest color */
					if (nc == (-1)) {
						nc = FUNC2(dst, ncR, ncG, ncB);
					}
				}
			}
			FUNC8(dst, tox, toy, nc);
			tox++;
		}
		toy++;
	}
}