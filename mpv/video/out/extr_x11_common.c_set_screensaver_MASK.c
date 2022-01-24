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
struct vo_x11_state {int screensaver_enabled; int dpms_touched; int /*<<< orphan*/ * display; } ;
typedef  int /*<<< orphan*/  Display ;
typedef  int /*<<< orphan*/  CARD16 ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct vo_x11_state*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct vo_x11_state*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7(struct vo_x11_state *x11, bool enabled)
{
    Display *mDisplay = x11->display;
    if (!mDisplay || x11->screensaver_enabled == enabled)
        return;
    FUNC4(x11, "%s screensaver.\n", enabled ? "Enabling" : "Disabling");
    x11->screensaver_enabled = enabled;
    if (FUNC6(mDisplay, !enabled))
        return;
    int nothing;
    if (FUNC3(mDisplay, &nothing, &nothing)) {
        BOOL onoff = 0;
        CARD16 state;
        FUNC2(mDisplay, &state, &onoff);
        if (!x11->dpms_touched && enabled)
            return; // enable DPMS only we we disabled it before
        if (enabled != !!onoff) {
            FUNC4(x11, "Setting DMPS: %s.\n", enabled ? "on" : "off");
            if (enabled) {
                FUNC1(mDisplay);
            } else {
                FUNC0(mDisplay);
                x11->dpms_touched = true;
            }
            FUNC2(mDisplay, &state, &onoff);
            if (enabled != !!onoff)
                FUNC5(x11, "DPMS state could not be set.\n");
        }
    }
}