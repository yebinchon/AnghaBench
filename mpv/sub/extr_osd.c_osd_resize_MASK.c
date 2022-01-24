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
struct osd_state {int /*<<< orphan*/  lock; int /*<<< orphan*/ * objs; } ;
struct mp_osd_res {int dummy; } ;

/* Variables and functions */
 int OSDTYPE_EXTERNAL ; 
 int OSDTYPE_EXTERNAL2 ; 
 int OSDTYPE_OSD ; 
 int /*<<< orphan*/  FUNC0 (struct osd_state*,struct mp_osd_res,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct osd_state *osd, struct mp_osd_res res)
{
    FUNC1(&osd->lock);
    int types[] = {OSDTYPE_OSD, OSDTYPE_EXTERNAL, OSDTYPE_EXTERNAL2, -1};
    for (int n = 0; types[n] >= 0; n++)
        FUNC0(osd, res, osd->objs[types[n]]);
    FUNC2(&osd->lock);
}