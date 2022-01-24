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
struct sub_bitmap {int /*<<< orphan*/  bitmap; int /*<<< orphan*/  stride; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct mp_image {int /*<<< orphan*/ * planes; int /*<<< orphan*/ * stride; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMGFMT_BGRA ; 
 struct mp_image* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_image*,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_image*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_image*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_image*,struct mp_image*,double) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_image*) ; 

void FUNC6(struct sub_bitmap *d, double gblur)
{
    struct mp_image *tmp1 = FUNC0(IMGFMT_BGRA, d->w, d->h);
    if (tmp1) { // on OOM, skip region
        struct mp_image s = {0};
        FUNC3(&s, IMGFMT_BGRA);
        FUNC2(&s, d->w, d->h);
        s.stride[0] = d->stride;
        s.planes[0] = d->bitmap;

        FUNC1(tmp1, &s);

        FUNC4(&s, tmp1, gblur);
    }
    FUNC5(tmp1);
}