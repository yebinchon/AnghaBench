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
struct TYPE_2__ {int* bpp; int flags; } ;
struct mp_image {scalar_t__ imgfmt; scalar_t__ w; scalar_t__ h; int num_planes; int /*<<< orphan*/ * planes; TYPE_1__ fmt; int /*<<< orphan*/ * stride; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVPALETTE_SIZE ; 
 int MP_IMGFLAG_PAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mp_image*) ; 
 int FUNC4 (struct mp_image*,int) ; 
 int FUNC5 (struct mp_image*,int) ; 

void FUNC6(struct mp_image *dst, struct mp_image *src)
{
    FUNC0(dst->imgfmt == src->imgfmt);
    FUNC0(dst->w == src->w && dst->h == src->h);
    FUNC0(FUNC3(dst));
    for (int n = 0; n < dst->num_planes; n++) {
        int line_bytes = (FUNC5(dst, n) * dst->fmt.bpp[n] + 7) / 8;
        int plane_h = FUNC4(dst, n);
        FUNC2(dst->planes[n], src->planes[n], line_bytes, plane_h,
                   dst->stride[n], src->stride[n]);
    }
    if (dst->fmt.flags & MP_IMGFLAG_PAL)
        FUNC1(dst->planes[1], src->planes[1], AVPALETTE_SIZE);
}