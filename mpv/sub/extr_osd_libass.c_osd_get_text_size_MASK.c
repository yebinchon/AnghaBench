#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct osd_state {int /*<<< orphan*/  lock; struct osd_object** objs; } ;
struct TYPE_5__ {TYPE_2__* track; } ;
struct osd_object {TYPE_1__ ass; } ;
struct TYPE_7__ {int MarginV; int FontSize; } ;
struct TYPE_6__ {int PlayResY; } ;
typedef  TYPE_3__ ASS_Style ;

/* Variables and functions */
 size_t OSDTYPE_OSD ; 
 TYPE_3__* FUNC0 (struct osd_state*,struct osd_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct osd_state *osd, int *out_screen_h, int *out_font_h)
{
    FUNC1(&osd->lock);
    struct osd_object *obj = osd->objs[OSDTYPE_OSD];
    ASS_Style *style = FUNC0(osd, obj);
    *out_screen_h = obj->ass.track->PlayResY - style->MarginV;
    *out_font_h = style->FontSize;
    FUNC2(&osd->lock);
}