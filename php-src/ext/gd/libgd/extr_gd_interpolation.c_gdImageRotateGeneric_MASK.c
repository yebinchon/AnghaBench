#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int width; int height; } ;
typedef  TYPE_1__ gdRect ;
typedef  TYPE_2__* gdImagePtr ;
typedef  scalar_t__ gdFixed ;
struct TYPE_12__ {int saveAlphaFlag; int** tpixels; } ;

/* Variables and functions */
 scalar_t__ M_PI ; 
 int FUNC0 (int const,int) ; 
 float FUNC1 (float) ; 
 TYPE_2__* FUNC2 (int,int) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,float const,TYPE_1__*) ; 
 int FUNC6 (int) ; 
 scalar_t__ FUNC7 (scalar_t__ const,scalar_t__ const) ; 
 scalar_t__ FUNC8 (float) ; 
 int FUNC9 (scalar_t__ const) ; 
 long FUNC10 (scalar_t__) ; 
 void* FUNC11 (int const) ; 
 scalar_t__ const FUNC12 (scalar_t__,scalar_t__ const) ; 
 void* FUNC13 (TYPE_2__*,long,long,int const) ; 
 float FUNC14 (float) ; 

gdImagePtr FUNC15(gdImagePtr src, const float degrees, const int bgColor)
{
	float _angle = ((float) (-degrees / 180.0f) * (float)M_PI);
	const int src_w  = FUNC3(src);
	const int src_h = FUNC4(src);
	const gdFixed f_0_5 = FUNC8(0.5f);
	const gdFixed f_H = FUNC11(src_h/2);
	const gdFixed f_W = FUNC11(src_w/2);
	const gdFixed f_cos = FUNC8(FUNC1(-_angle));
	const gdFixed f_sin = FUNC8(FUNC14(-_angle));

	unsigned int dst_offset_x;
	unsigned int dst_offset_y = 0;
	unsigned int i;
	gdImagePtr dst;
	int new_width, new_height;
	gdRect bbox;

	const gdFixed f_slop_y = f_sin;
	const gdFixed f_slop_x = f_cos;
	const gdFixed f_slop = f_slop_x > 0 && f_slop_y > 0 ?
							(f_slop_x > f_slop_y ? FUNC7(f_slop_y, f_slop_x) : FUNC7(f_slop_x, f_slop_y))
						: 0;


	if (bgColor < 0) {
		return NULL;
	}

    FUNC5(src, degrees, &bbox);
    new_width = bbox.width;
    new_height = bbox.height;

	dst = FUNC2(new_width, new_height);
	if (!dst) {
		return NULL;
	}
	dst->saveAlphaFlag = 1;

	for (i = 0; i < new_height; i++) {
		unsigned int j;
		dst_offset_x = 0;
		for (j = 0; j < new_width; j++) {
			gdFixed f_i = FUNC11((int)i - (int)new_height/ 2);
			gdFixed f_j = FUNC11((int)j - (int)new_width / 2);
			gdFixed f_m = FUNC12(f_j,f_sin) + FUNC12(f_i,f_cos) + f_0_5 + f_H;
			gdFixed f_n = FUNC12(f_j,f_cos) - FUNC12(f_i,f_sin) + f_0_5 + f_W;
			long m = FUNC10(f_m);
			long n = FUNC10(f_n);

			if ((n <= 0) || (m <= 0) || (m >= src_h) || (n >= src_w)) {
				dst->tpixels[dst_offset_y][dst_offset_x++] = bgColor;
			} else if ((n <= 1) || (m <= 1) || (m >= src_h - 1) || (n >= src_w - 1)) {
				register int c = FUNC13(src, n, m, bgColor);
				c = c | (( FUNC6(c) + ((int)(127* FUNC9(f_slop)))) << 24);

				dst->tpixels[dst_offset_y][dst_offset_x++] = FUNC0(bgColor, c);
			} else {
				dst->tpixels[dst_offset_y][dst_offset_x++] = FUNC13(src, n, m, bgColor);
			}
		}
		dst_offset_y++;
	}
	return dst;
}