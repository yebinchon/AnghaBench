#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_8__ {int /*<<< orphan*/  trueColor; } ;

/* Variables and functions */
 double FUNC0 (double) ; 
 double FUNC1 (double) ; 
 double gdAlphaMax ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int,int,int,int,int,int,int,int) ; 
 int FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int) ; 
 double FUNC6 (int) ; 
 double FUNC7 (int) ; 
 double FUNC8 (int) ; 
 double FUNC9 (int) ; 

void FUNC10 (gdImagePtr dst, gdImagePtr src, int dstX, int dstY, int srcX, int srcY, int dstW, int dstH, int srcW, int srcH)
{
	int x, y;
	double sy1, sy2, sx1, sx2;

	if (!dst->trueColor) {
		FUNC2 (dst, src, dstX, dstY, srcX, srcY, dstW, dstH, srcW, srcH);
		return;
	}
	for (y = dstY; (y < dstY + dstH); y++) {
		sy1 = ((double) y - (double) dstY) * (double) srcH / (double) dstH;
		sy2 = ((double) (y + 1) - (double) dstY) * (double) srcH / (double) dstH;
		for (x = dstX; (x < dstX + dstW); x++) {
			double sx, sy;
			double spixels = 0;
			double red = 0.0, green = 0.0, blue = 0.0, alpha = 0.0;
			double alpha_factor, alpha_sum = 0.0, contrib_sum = 0.0;
			sx1 = ((double) x - (double) dstX) * (double) srcW / dstW;
			sx2 = ((double) (x + 1) - (double) dstX) * (double) srcW / dstW;
			sy = sy1;
			do {
				double yportion;
				if (FUNC0(sy) == FUNC0(sy1)) {
					yportion = 1.0f - (sy - FUNC0(sy));
					if (yportion > sy2 - sy1) {
						yportion = sy2 - sy1;
					}
					sy = FUNC0(sy);
				} else if (sy == FUNC1(sy2)) {
					yportion = sy2 - FUNC0(sy2);
				} else {
					yportion = 1.0f;
				}
				sx = sx1;
				do {
					double xportion;
					double pcontribution;
					int p;
					if (FUNC1(sx) == FUNC0(sx1)) {
						xportion = 1.0f - (sx - FUNC0(sx));
						if (xportion > sx2 - sx1) {
							xportion = sx2 - sx1;
						}
						sx = FUNC0(sx);
					} else if (sx == FUNC1(sx2)) {
						xportion = sx2 - FUNC0(sx2);
					} else {
						xportion = 1.0f;
					}
					pcontribution = xportion * yportion;
					p = FUNC3(src, (int) sx + srcX, (int) sy + srcY);

					alpha_factor = ((gdAlphaMax - FUNC6(p))) * pcontribution;
					red += FUNC9 (p) * alpha_factor;
					green += FUNC8 (p) * alpha_factor;
					blue += FUNC7 (p) * alpha_factor;
					alpha += FUNC6 (p) * pcontribution;
					alpha_sum += alpha_factor;
					contrib_sum += pcontribution;
					spixels += xportion * yportion;
					sx += 1.0f;
				}
				while (sx < sx2);

				sy += 1.0f;
			}

			while (sy < sy2);

			if (spixels != 0.0f) {
				red /= spixels;
				green /= spixels;
				blue /= spixels;
				alpha /= spixels;
				alpha += 0.5;
			}
			if ( alpha_sum != 0.0f) {
				if( contrib_sum != 0.0f) {
					alpha_sum /= contrib_sum;
				}
				red /= alpha_sum;
				green /= alpha_sum;
				blue /= alpha_sum;
			}
			/* Clamping to allow for rounding errors above */
			if (red > 255.0f) {
				red = 255.0f;
			}
			if (green > 255.0f) {
				green = 255.0f;
			}
			if (blue > 255.0f) {
				blue = 255.0f;
			}
			if (alpha > gdAlphaMax) {
				alpha = gdAlphaMax;
			}
			FUNC4(dst, x, y, FUNC5 ((int) red, (int) green, (int) blue, (int) alpha));
		}
	}
}