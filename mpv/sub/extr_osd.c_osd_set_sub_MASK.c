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
struct osd_state {int want_redraw_notification; int /*<<< orphan*/  lock; struct osd_object** objs; } ;
struct osd_object {int vo_change_id; struct dec_sub* sub; } ;
struct dec_sub {int dummy; } ;

/* Variables and functions */
 int OSDTYPE_SUB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct osd_state *osd, int index, struct dec_sub *dec_sub)
{
    FUNC0(&osd->lock);
    if (index >= 0 && index < 2) {
        struct osd_object *obj = osd->objs[OSDTYPE_SUB + index];
        obj->sub = dec_sub;
        obj->vo_change_id += 1;
    }
    osd->want_redraw_notification = true;
    FUNC1(&osd->lock);
}