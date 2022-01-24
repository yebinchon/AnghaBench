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
 int FUNC2 (scalar_t__,int,int) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,int) ; 
 int FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int,int) ; 

void FUNC7 (gdImagePtr dst, gdImagePtr src, int dstX, int dstY, int srcX, int srcY, int w, int h, int pct)
{
	int c, dc;
	int x, y;
	int tox, toy;
	int ncR, ncG, ncB;
	toy = dstY;

	for (y = srcY; y < (srcY + h); y++) {
		tox = dstX;
		for (x = srcX; x < (srcX + w); x++) {
			int nc;
			c = FUNC2(src, x, y);
			/* Added 7/24/95: support transparent copies */
			if (FUNC3(src) == c) {
				tox++;
				continue;
			}
			/* If it's the same image, mapping is trivial */
			if (dst == src) {
				nc = c;
			} else {
				dc = FUNC2(dst, tox, toy);

 				ncR = (int)(FUNC5 (src, c) * (pct / 100.0) + FUNC5 (dst, dc) * ((100 - pct) / 100.0));
 				ncG = (int)(FUNC4 (src, c) * (pct / 100.0) + FUNC4 (dst, dc) * ((100 - pct) / 100.0));
 				ncB = (int)(FUNC0 (src, c) * (pct / 100.0) + FUNC0 (dst, dc) * ((100 - pct) / 100.0));

				/* Find a reasonable color */
				nc = FUNC1 (dst, ncR, ncG, ncB);
			}
			FUNC6 (dst, tox, toy, nc);
			tox++;
		}
		toy++;
	}
}