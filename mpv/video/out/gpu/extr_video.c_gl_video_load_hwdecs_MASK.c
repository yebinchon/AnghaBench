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
struct ra_hwdec_driver {char* name; } ;
struct mp_hwdec_devices {int dummy; } ;
struct TYPE_2__ {char* hwdec_interop; } ;
struct gl_video {int hwdec_interop_loading_done; TYPE_1__ opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gl_video*,struct mp_hwdec_devices*) ; 
 int /*<<< orphan*/  FUNC1 (struct gl_video*,struct mp_hwdec_devices*,struct ra_hwdec_driver const*,int) ; 
 struct ra_hwdec_driver** ra_hwdec_drivers ; 
 scalar_t__ FUNC2 (char*,char*) ; 

void FUNC3(struct gl_video *p, struct mp_hwdec_devices *devs,
                          bool load_all_by_default)
{
    char *type = p->opts.hwdec_interop;
    if (!type || !type[0] || FUNC2(type, "auto") == 0) {
        if (!load_all_by_default)
            return;
        type = "all";
    }
    if (FUNC2(type, "no") == 0) {
        // do nothing, just block further loading
    } else if (FUNC2(type, "all") == 0) {
        FUNC0(p, devs);
    } else {
        for (int n = 0; ra_hwdec_drivers[n]; n++) {
            const struct ra_hwdec_driver *drv = ra_hwdec_drivers[n];
            if (FUNC2(type, drv->name) == 0) {
                FUNC1(p, devs, drv, false);
                break;
            }
        }
    }
    p->hwdec_interop_loading_done = true;
}