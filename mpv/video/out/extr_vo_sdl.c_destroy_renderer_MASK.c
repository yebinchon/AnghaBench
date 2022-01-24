#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vo {struct priv* priv; } ;
struct priv {int /*<<< orphan*/ * renderer; TYPE_2__* osd_surfaces; int /*<<< orphan*/ * tex; } ;
struct TYPE_4__ {int targets_size; TYPE_1__* targets; } ;
struct TYPE_3__ {int /*<<< orphan*/ * tex2; int /*<<< orphan*/ * tex; } ;

/* Variables and functions */
 int MAX_OSD_PARTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct vo *vo)
{
    struct priv *vc = vo->priv;

    // free ALL the textures
    if (vc->tex) {
        FUNC1(vc->tex);
        vc->tex = NULL;
    }

    int i, j;
    for (i = 0; i < MAX_OSD_PARTS; ++i) {
        for (j = 0; j < vc->osd_surfaces[i].targets_size; ++j) {
            if (vc->osd_surfaces[i].targets[j].tex) {
                FUNC1(vc->osd_surfaces[i].targets[j].tex);
                vc->osd_surfaces[i].targets[j].tex = NULL;
            }
            if (vc->osd_surfaces[i].targets[j].tex2) {
                FUNC1(vc->osd_surfaces[i].targets[j].tex2);
                vc->osd_surfaces[i].targets[j].tex2 = NULL;
            }
        }
    }

    if (vc->renderer) {
        FUNC0(vc->renderer);
        vc->renderer = NULL;
    }
}