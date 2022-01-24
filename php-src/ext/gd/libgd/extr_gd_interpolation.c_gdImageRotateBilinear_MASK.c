#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {unsigned int width; unsigned int height; } ;
typedef  TYPE_1__ gdRect ;
typedef  TYPE_2__* gdImagePtr ;
typedef  scalar_t__ gdFixed ;
struct TYPE_11__ {int saveAlphaFlag; int** tpixels; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ,int) ; 
 float const M_PI ; 
 float FUNC1 (float) ; 
 TYPE_2__* FUNC2 (unsigned int,unsigned int) ; 
 unsigned int FUNC3 (TYPE_2__*) ; 
 unsigned int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,float const,TYPE_1__*) ; 
 int FUNC6 (unsigned char const,unsigned char const,unsigned char const,unsigned char const) ; 
 unsigned int const FUNC7 (int const) ; 
 unsigned int const FUNC8 (int const) ; 
 unsigned int const FUNC9 (int const) ; 
 unsigned int const FUNC10 (int const) ; 
 scalar_t__ FUNC11 (float) ; 
 unsigned int FUNC12 (scalar_t__ const) ; 
 scalar_t__ const FUNC13 (unsigned int const) ; 
 scalar_t__ const FUNC14 (scalar_t__ const,scalar_t__ const) ; 
 float FUNC15 (float) ; 

gdImagePtr FUNC16(gdImagePtr src, const float degrees, const int bgColor)
{
	float _angle = (float)((- degrees / 180.0f) * M_PI);
	const unsigned int src_w = FUNC3(src);
	const unsigned int src_h = FUNC4(src);
	unsigned int new_width, new_height;
	const gdFixed f_0_5 = FUNC11(0.5f);
	const gdFixed f_H = FUNC13(src_h/2);
	const gdFixed f_W = FUNC13(src_w/2);
	const gdFixed f_cos = FUNC11(FUNC1(-_angle));
	const gdFixed f_sin = FUNC11(FUNC15(-_angle));
	const gdFixed f_1 = FUNC13(1);
	unsigned int i;
	unsigned int dst_offset_x;
	unsigned int dst_offset_y = 0;
	unsigned int src_offset_x, src_offset_y;
	gdImagePtr dst;
	gdRect bbox;

	FUNC5(src, degrees, &bbox);

	new_width = bbox.width;
	new_height = bbox.height;

	dst = FUNC2(new_width, new_height);
	if (dst == NULL) {
		return NULL;
	}
	dst->saveAlphaFlag = 1;

	for (i = 0; i < new_height; i++) {
		unsigned int j;
		dst_offset_x = 0;

		for (j=0; j < new_width; j++) {
			const gdFixed f_i = FUNC13((int)i - (int)new_height/2);
			const gdFixed f_j = FUNC13((int)j - (int)new_width/2);
			const gdFixed f_m = FUNC14(f_j,f_sin) + FUNC14(f_i,f_cos) + f_0_5 + f_H;
			const gdFixed f_n = FUNC14(f_j,f_cos) - FUNC14(f_i,f_sin) + f_0_5 + f_W;
			const unsigned int m = FUNC12(f_m);
			const unsigned int n = FUNC12(f_n);

			if ((m >= 0) && (m < src_h - 1) && (n >= 0) && (n < src_w - 1)) {
				const gdFixed f_f = f_m - FUNC13(m);
				const gdFixed f_g = f_n - FUNC13(n);
				const gdFixed f_w1 = FUNC14(f_1-f_f, f_1-f_g);
				const gdFixed f_w2 = FUNC14(f_1-f_f, f_g);
				const gdFixed f_w3 = FUNC14(f_f, f_1-f_g);
				const gdFixed f_w4 = FUNC14(f_f, f_g);

				if (m < src_h-1) {
					src_offset_x = n;
					src_offset_y = m + 1;
				}

				if (!((n >= src_w-1) || (m >= src_h-1))) {
					src_offset_x = n + 1;
					src_offset_y = m + 1;
				}
				{
					const int pixel1 = src->tpixels[src_offset_y][src_offset_x];
					register int pixel2, pixel3, pixel4;

					if (src_offset_y + 1 >= src_h) {
						pixel2 = pixel1;
						pixel3 = pixel1;
						pixel4 = pixel1;
					} else if (src_offset_x + 1 >= src_w) {
						pixel2 = pixel1;
						pixel3 = pixel1;
						pixel4 = pixel1;
					} else {
					    pixel2 = src->tpixels[src_offset_y][src_offset_x + 1];
						pixel3 = src->tpixels[src_offset_y + 1][src_offset_x];
						pixel4 = src->tpixels[src_offset_y + 1][src_offset_x + 1];
					}
					{
						const gdFixed f_r1 = FUNC13(FUNC10(pixel1));
						const gdFixed f_r2 = FUNC13(FUNC10(pixel2));
						const gdFixed f_r3 = FUNC13(FUNC10(pixel3));
						const gdFixed f_r4 = FUNC13(FUNC10(pixel4));
						const gdFixed f_g1 = FUNC13(FUNC9(pixel1));
						const gdFixed f_g2 = FUNC13(FUNC9(pixel2));
						const gdFixed f_g3 = FUNC13(FUNC9(pixel3));
						const gdFixed f_g4 = FUNC13(FUNC9(pixel4));
						const gdFixed f_b1 = FUNC13(FUNC8(pixel1));
						const gdFixed f_b2 = FUNC13(FUNC8(pixel2));
						const gdFixed f_b3 = FUNC13(FUNC8(pixel3));
						const gdFixed f_b4 = FUNC13(FUNC8(pixel4));
						const gdFixed f_a1 = FUNC13(FUNC7(pixel1));
						const gdFixed f_a2 = FUNC13(FUNC7(pixel2));
						const gdFixed f_a3 = FUNC13(FUNC7(pixel3));
						const gdFixed f_a4 = FUNC13(FUNC7(pixel4));
						const gdFixed f_red = FUNC14(f_w1, f_r1) + FUNC14(f_w2, f_r2) + FUNC14(f_w3, f_r3) + FUNC14(f_w4, f_r4);
						const gdFixed f_green = FUNC14(f_w1, f_g1) + FUNC14(f_w2, f_g2) + FUNC14(f_w3, f_g3) + FUNC14(f_w4, f_g4);
						const gdFixed f_blue = FUNC14(f_w1, f_b1) + FUNC14(f_w2, f_b2) + FUNC14(f_w3, f_b3) + FUNC14(f_w4, f_b4);
						const gdFixed f_alpha = FUNC14(f_w1, f_a1) + FUNC14(f_w2, f_a2) + FUNC14(f_w3, f_a3) + FUNC14(f_w4, f_a4);

						const unsigned char red   = (unsigned char) FUNC0(FUNC12(f_red),   0, 255);
						const unsigned char green = (unsigned char) FUNC0(FUNC12(f_green), 0, 255);
						const unsigned char blue  = (unsigned char) FUNC0(FUNC12(f_blue),  0, 255);
						const unsigned char alpha = (unsigned char) FUNC0(FUNC12(f_alpha), 0, 127);

						dst->tpixels[dst_offset_y][dst_offset_x++] = FUNC6(red, green, blue, alpha);
					}
				}
			} else {
				dst->tpixels[dst_offset_y][dst_offset_x++] = bgColor;
			}
		}
		dst_offset_y++;
	}
	return dst;
}