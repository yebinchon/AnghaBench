
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_x11_state {int screensaver_enabled; int dpms_touched; int * display; } ;
typedef int Display ;
typedef int CARD16 ;
typedef scalar_t__ BOOL ;


 int DPMSDisable (int *) ;
 int DPMSEnable (int *) ;
 int DPMSInfo (int *,int *,scalar_t__*) ;
 scalar_t__ DPMSQueryExtension (int *,int*,int*) ;
 int MP_VERBOSE (struct vo_x11_state*,char*,char*) ;
 int MP_WARN (struct vo_x11_state*,char*) ;
 scalar_t__ xss_suspend (int *,int) ;

__attribute__((used)) static void set_screensaver(struct vo_x11_state *x11, bool enabled)
{
    Display *mDisplay = x11->display;
    if (!mDisplay || x11->screensaver_enabled == enabled)
        return;
    MP_VERBOSE(x11, "%s screensaver.\n", enabled ? "Enabling" : "Disabling");
    x11->screensaver_enabled = enabled;
    if (xss_suspend(mDisplay, !enabled))
        return;
    int nothing;
    if (DPMSQueryExtension(mDisplay, &nothing, &nothing)) {
        BOOL onoff = 0;
        CARD16 state;
        DPMSInfo(mDisplay, &state, &onoff);
        if (!x11->dpms_touched && enabled)
            return;
        if (enabled != !!onoff) {
            MP_VERBOSE(x11, "Setting DMPS: %s.\n", enabled ? "on" : "off");
            if (enabled) {
                DPMSEnable(mDisplay);
            } else {
                DPMSDisable(mDisplay);
                x11->dpms_touched = 1;
            }
            DPMSInfo(mDisplay, &state, &onoff);
            if (enabled != !!onoff)
                MP_WARN(x11, "DPMS state could not be set.\n");
        }
    }
}
