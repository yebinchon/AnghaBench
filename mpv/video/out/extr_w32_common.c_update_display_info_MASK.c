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
struct vo_w32_state {scalar_t__ monitor; double display_fps; char* color_profile; int /*<<< orphan*/  window; } ;
struct TYPE_2__ {int cbSize; int /*<<< orphan*/  szDevice; } ;
typedef  TYPE_1__ MONITORINFOEXW ;
typedef  int /*<<< orphan*/  MONITORINFO ;
typedef  scalar_t__ HMONITOR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MONITOR_DEFAULTTOPRIMARY ; 
 int /*<<< orphan*/  FUNC1 (struct vo_w32_state*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct vo_w32_state*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VO_EVENT_ICC_PROFILE_CHANGED ; 
 int /*<<< orphan*/  VO_EVENT_WIN_STATE ; 
 char* FUNC4 (struct vo_w32_state*,int /*<<< orphan*/ ) ; 
 double FUNC5 (int /*<<< orphan*/ ) ; 
 double FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vo_w32_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct vo_w32_state*) ; 

__attribute__((used)) static void FUNC11(struct vo_w32_state *w32)
{
    HMONITOR monitor = FUNC3(w32->window, MONITOR_DEFAULTTOPRIMARY);
    if (w32->monitor == monitor)
        return;
    w32->monitor = monitor;

    FUNC10(w32);

    MONITORINFOEXW mi = { .cbSize = sizeof mi };
    FUNC0(monitor, (MONITORINFO*)&mi);

    // Try to get the monitor refresh rate.
    double freq = 0.0;

    if (freq == 0.0)
        freq = FUNC6(mi.szDevice);
    if (freq == 0.0)
        freq = FUNC5(mi.szDevice);

    if (freq != w32->display_fps) {
        FUNC1(w32, "display-fps: %f\n", freq);
        if (freq == 0.0)
            FUNC2(w32, "Couldn't determine monitor refresh rate\n");
        w32->display_fps = freq;
        FUNC7(w32, VO_EVENT_WIN_STATE);
    }

    char *color_profile = FUNC4(w32, mi.szDevice);
    if ((color_profile == NULL) != (w32->color_profile == NULL) ||
        (color_profile && FUNC8(color_profile, w32->color_profile)))
    {
        if (color_profile)
            FUNC1(w32, "color-profile: %s\n", color_profile);
        FUNC9(w32->color_profile);
        w32->color_profile = color_profile;
        color_profile = NULL;
        FUNC7(w32, VO_EVENT_ICC_PROFILE_CHANGED);
    }

    FUNC9(color_profile);
}