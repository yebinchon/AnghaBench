
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_w32_state {scalar_t__ monitor; double display_fps; char* color_profile; int window; } ;
struct TYPE_2__ {int cbSize; int szDevice; } ;
typedef TYPE_1__ MONITORINFOEXW ;
typedef int MONITORINFO ;
typedef scalar_t__ HMONITOR ;


 int GetMonitorInfoW (scalar_t__,int *) ;
 int MONITOR_DEFAULTTOPRIMARY ;
 int MP_VERBOSE (struct vo_w32_state*,char*,...) ;
 int MP_WARN (struct vo_w32_state*,char*) ;
 scalar_t__ MonitorFromWindow (int ,int ) ;
 int VO_EVENT_ICC_PROFILE_CHANGED ;
 int VO_EVENT_WIN_STATE ;
 char* get_color_profile (struct vo_w32_state*,int ) ;
 double get_refresh_rate_from_gdi (int ) ;
 double mp_w32_displayconfig_get_refresh_rate (int ) ;
 int signal_events (struct vo_w32_state*,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int talloc_free (char*) ;
 int update_dpi (struct vo_w32_state*) ;

__attribute__((used)) static void update_display_info(struct vo_w32_state *w32)
{
    HMONITOR monitor = MonitorFromWindow(w32->window, MONITOR_DEFAULTTOPRIMARY);
    if (w32->monitor == monitor)
        return;
    w32->monitor = monitor;

    update_dpi(w32);

    MONITORINFOEXW mi = { .cbSize = sizeof mi };
    GetMonitorInfoW(monitor, (MONITORINFO*)&mi);


    double freq = 0.0;

    if (freq == 0.0)
        freq = mp_w32_displayconfig_get_refresh_rate(mi.szDevice);
    if (freq == 0.0)
        freq = get_refresh_rate_from_gdi(mi.szDevice);

    if (freq != w32->display_fps) {
        MP_VERBOSE(w32, "display-fps: %f\n", freq);
        if (freq == 0.0)
            MP_WARN(w32, "Couldn't determine monitor refresh rate\n");
        w32->display_fps = freq;
        signal_events(w32, VO_EVENT_WIN_STATE);
    }

    char *color_profile = get_color_profile(w32, mi.szDevice);
    if ((color_profile == ((void*)0)) != (w32->color_profile == ((void*)0)) ||
        (color_profile && strcmp(color_profile, w32->color_profile)))
    {
        if (color_profile)
            MP_VERBOSE(w32, "color-profile: %s\n", color_profile);
        talloc_free(w32->color_profile);
        w32->color_profile = color_profile;
        color_profile = ((void*)0);
        signal_events(w32, VO_EVENT_ICC_PROFILE_CHANGED);
    }

    talloc_free(color_profile);
}
