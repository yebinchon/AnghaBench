#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int align_x; int align_y; int* ys; int* xs; int* bpp; } ;
struct mp_image {int w; int h; int num_planes; int* planes; int* stride; TYPE_1__ fmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_image*,int,int) ; 

void FUNC2(struct mp_image *img, int x0, int y0, int x1, int y1)
{
    FUNC0(x0 >= 0 && y0 >= 0);
    FUNC0(x0 <= x1 && y0 <= y1);
    FUNC0(x1 <= img->w && y1 <= img->h);
    FUNC0(!(x0 & (img->fmt.align_x - 1)));
    FUNC0(!(y0 & (img->fmt.align_y - 1)));

    for (int p = 0; p < img->num_planes; ++p) {
        img->planes[p] += (y0 >> img->fmt.ys[p]) * img->stride[p] +
                          (x0 >> img->fmt.xs[p]) * img->fmt.bpp[p] / 8;
    }
    FUNC1(img, x1 - x0, y1 - y0);
}