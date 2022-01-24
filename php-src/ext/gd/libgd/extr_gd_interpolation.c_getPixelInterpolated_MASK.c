#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_6__ {scalar_t__ interpolation_id; int trueColor; scalar_t__ (* interpolation ) (double) ;} ;

/* Variables and functions */
 double FUNC0 (double,int /*<<< orphan*/ ,int) ; 
 scalar_t__ GD_BICUBIC_FIXED ; 
 scalar_t__ GD_BILINEAR_FIXED ; 
 scalar_t__ GD_NEAREST_NEIGHBOUR ; 
 scalar_t__ GD_WEIGHTED4 ; 
 int gdAlphaMax ; 
 int FUNC1 (int,int,int,int) ; 
 double FUNC2 (int const) ; 
 double FUNC3 (int const) ; 
 double FUNC4 (int const) ; 
 double FUNC5 (int const) ; 
 int FUNC6 (TYPE_1__*,double const,double const,int const) ; 
 int FUNC7 (TYPE_1__*,int const,int const,int const) ; 
 int FUNC8 (TYPE_1__*,int const,int const,int const) ; 
 scalar_t__ FUNC9 (double) ; 
 scalar_t__ FUNC10 (double) ; 

int FUNC11(gdImagePtr im, const double x, const double y, const int bgColor)
{
	const int xi=(int)((x) < 0 ? x - 1: x);
	const int yi=(int)((y) < 0 ? y - 1: y);
	int yii;
	int i;
	double kernel, kernel_cache_y;
	double kernel_x[12], kernel_y[4];
	double new_r = 0.0f, new_g = 0.0f, new_b = 0.0f, new_a = 0.0f;

	/* These methods use special implementations */
	if (im->interpolation_id == GD_BILINEAR_FIXED || im->interpolation_id == GD_BICUBIC_FIXED || im->interpolation_id == GD_NEAREST_NEIGHBOUR) {
		return -1;
	}

	if (im->interpolation_id == GD_WEIGHTED4) {
		return FUNC6(im, x, y, bgColor);
	}

	if (im->interpolation_id == GD_NEAREST_NEIGHBOUR) {
		if (im->trueColor == 1) {
			return FUNC8(im, xi, yi, bgColor);
		} else {
			return FUNC7(im, xi, yi, bgColor);
		}
	}
	if (im->interpolation) {
		for (i=0; i<4; i++) {
			kernel_x[i] = (double) im->interpolation((double)(xi+i-1-x));
			kernel_y[i] = (double) im->interpolation((double)(yi+i-1-y));
		}
	} else {
		return -1;
	}

	/*
	 * TODO: use the known fast rgba multiplication implementation once
	 * the new formats are in place
	 */
	for (yii = yi-1; yii < yi+3; yii++) {
		int xii;
		kernel_cache_y = kernel_y[yii-(yi-1)];
		if (im->trueColor) {
			for (xii=xi-1; xii<xi+3; xii++) {
				const int rgbs = FUNC8(im, xii, yii, bgColor);

				kernel = kernel_cache_y * kernel_x[xii-(xi-1)];
				new_r += kernel * FUNC5(rgbs);
				new_g += kernel * FUNC4(rgbs);
				new_b += kernel * FUNC3(rgbs);
				new_a += kernel * FUNC2(rgbs);
			}
		} else {
			for (xii=xi-1; xii<xi+3; xii++) {
				const int rgbs = FUNC7(im, xii, yii, bgColor);

				kernel = kernel_cache_y * kernel_x[xii-(xi-1)];
				new_r += kernel * FUNC5(rgbs);
				new_g += kernel * FUNC4(rgbs);
				new_b += kernel * FUNC3(rgbs);
				new_a += kernel * FUNC2(rgbs);
			}
		}
	}

	new_r = FUNC0(new_r, 0, 255);
	new_g = FUNC0(new_g, 0, 255);
	new_b = FUNC0(new_b, 0, 255);
	new_a = FUNC0(new_a, 0, gdAlphaMax);

	return FUNC1(((int)new_r), ((int)new_g), ((int)new_b), ((int)new_a));
}