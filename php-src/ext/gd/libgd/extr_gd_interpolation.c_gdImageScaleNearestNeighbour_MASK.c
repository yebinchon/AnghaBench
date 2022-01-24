#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
typedef  int /*<<< orphan*/  gdFixed ;
struct TYPE_5__ {int /*<<< orphan*/ ** pixels; int /*<<< orphan*/ ** tpixels; scalar_t__ trueColor; scalar_t__ sy; scalar_t__ sx; } ;

/* Variables and functions */
 unsigned long FUNC0 (int,unsigned int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (unsigned long const,unsigned long const) ; 
 int /*<<< orphan*/  FUNC3 (float const) ; 
 long FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 

gdImagePtr FUNC7(gdImagePtr im, const unsigned int width, const unsigned int height)
{
	const unsigned long new_width = FUNC0(1, width);
	const unsigned long new_height = FUNC0(1, height);
	const float dx = (float)im->sx / (float)new_width;
	const float dy = (float)im->sy / (float)new_height;
	const gdFixed f_dx = FUNC3(dx);
	const gdFixed f_dy = FUNC3(dy);

	gdImagePtr dst_img;
	unsigned long  dst_offset_x;
	unsigned long  dst_offset_y = 0;
	unsigned int i;

	if (new_width == 0 || new_height == 0) {
		return NULL;
	}

	dst_img = FUNC2(new_width, new_height);

	if (dst_img == NULL) {
		return NULL;
	}

	for (i=0; i<new_height; i++) {
		unsigned int j;
		dst_offset_x = 0;
		if (im->trueColor) {
			for (j=0; j<new_width; j++) {
				const gdFixed f_i = FUNC5(i);
				const gdFixed f_j = FUNC5(j);
				const gdFixed f_a = FUNC6(f_i, f_dy);
				const gdFixed f_b = FUNC6(f_j, f_dx);
				const long m = FUNC4(f_a);
				const long n = FUNC4(f_b);

				dst_img->tpixels[dst_offset_y][dst_offset_x++] = im->tpixels[m][n];
			}
		} else {
			for (j=0; j<new_width; j++) {
				const gdFixed f_i = FUNC5(i);
				const gdFixed f_j = FUNC5(j);
				const gdFixed f_a = FUNC6(f_i, f_dy);
				const gdFixed f_b = FUNC6(f_j, f_dx);
				const long m = FUNC4(f_a);
				const long n = FUNC4(f_b);

				dst_img->tpixels[dst_offset_y][dst_offset_x++] = FUNC1(im->pixels[m][n]);
			}
		}
		dst_offset_y++;
	}
	return dst_img;
}