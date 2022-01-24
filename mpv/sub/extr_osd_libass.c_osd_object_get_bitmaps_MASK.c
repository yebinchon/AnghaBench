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
struct sub_bitmaps {int dummy; } ;
struct osd_state {int dummy; } ;
struct osd_object {scalar_t__ type; int num_externals; int changed; int /*<<< orphan*/ * ass_imgs; scalar_t__ ass_packer; int /*<<< orphan*/  vo_res; TYPE_1__* externals; int /*<<< orphan*/  ass; scalar_t__ osd_changed; } ;
struct TYPE_2__ {int /*<<< orphan*/  ass; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct osd_object*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ OSDTYPE_OSD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 (struct osd_object*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,int,int,int,struct sub_bitmaps*) ; 
 int /*<<< orphan*/  FUNC4 (struct osd_state*,struct osd_object*) ; 

void FUNC5(struct osd_state *osd, struct osd_object *obj,
                            int format, struct sub_bitmaps *out_imgs)
{
    if (obj->type == OSDTYPE_OSD && obj->osd_changed)
        FUNC4(osd, obj);

    if (!obj->ass_packer)
        obj->ass_packer = FUNC2(obj);

    FUNC0(obj, obj->ass_imgs, obj->num_externals + 1);

    FUNC1(&obj->ass, &obj->vo_res, &obj->ass_imgs[0], &obj->changed);
    for (int n = 0; n < obj->num_externals; n++) {
        FUNC1(&obj->externals[n].ass, &obj->vo_res, &obj->ass_imgs[n + 1],
                   &obj->changed);
    }

    FUNC3(obj->ass_packer, obj->ass_imgs, obj->num_externals + 1,
                       obj->changed, format, out_imgs);

    obj->changed = false;
}