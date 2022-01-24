#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mp_image {int num_ff_side_data; TYPE_1__* ff_side_data; int /*<<< orphan*/  a53_cc; int /*<<< orphan*/  icc_profile; int /*<<< orphan*/  hwctx; int /*<<< orphan*/ * bufs; } ;
struct TYPE_3__ {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int MP_MAX_PLANES ; 
 int /*<<< orphan*/  mp_image_destructor ; 
 struct mp_image* FUNC0 (struct mp_image*) ; 
 struct mp_image* new ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_image*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 struct mp_image* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_image*,int /*<<< orphan*/ ) ; 

struct mp_image *FUNC6(struct mp_image *img)
{
    if (!img)
        return NULL;

    if (!img->bufs[0])
        return FUNC0(img);

    struct mp_image *new = FUNC4(NULL, new);
    FUNC5(new, mp_image_destructor);
    *new = *img;

    bool ok = true;
    for (int p = 0; p < MP_MAX_PLANES; p++)
        FUNC1(&ok, &new->bufs[p]);

    FUNC1(&ok, &new->hwctx);
    FUNC1(&ok, &new->icc_profile);
    FUNC1(&ok, &new->a53_cc);

    new->ff_side_data = FUNC3(NULL, new->ff_side_data,
                        new->num_ff_side_data * sizeof(new->ff_side_data[0]));
    for (int n = 0; n < new->num_ff_side_data; n++)
        FUNC1(&ok, &new->ff_side_data[n].buf);

    if (ok)
        return new;

    // Do this after _all_ bufs were changed; we don't want it to free bufs
    // from the original image if this fails.
    FUNC2(new);
    return NULL;
}