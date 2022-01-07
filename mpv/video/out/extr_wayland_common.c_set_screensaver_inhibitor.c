
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zwp_idle_inhibit_manager_v1 {int dummy; } ;
struct vo_wayland_state {int * idle_inhibitor; int surface; struct zwp_idle_inhibit_manager_v1* idle_inhibit_manager; } ;


 int MP_VERBOSE (struct vo_wayland_state*,char*) ;
 int VO_NOTIMPL ;
 int VO_TRUE ;
 int * zwp_idle_inhibit_manager_v1_create_inhibitor (struct zwp_idle_inhibit_manager_v1*,int ) ;
 int zwp_idle_inhibitor_v1_destroy (int *) ;

__attribute__((used)) static int set_screensaver_inhibitor(struct vo_wayland_state *wl, int state)
{
    if (!wl->idle_inhibit_manager)
        return VO_NOTIMPL;
    if (state == (!!wl->idle_inhibitor))
        return VO_TRUE;
    if (state) {
        MP_VERBOSE(wl, "Enabling idle inhibitor\n");
        struct zwp_idle_inhibit_manager_v1 *mgr = wl->idle_inhibit_manager;
        wl->idle_inhibitor = zwp_idle_inhibit_manager_v1_create_inhibitor(mgr, wl->surface);
    } else {
        MP_VERBOSE(wl, "Disabling the idle inhibitor\n");
        zwp_idle_inhibitor_v1_destroy(wl->idle_inhibitor);
        wl->idle_inhibitor = ((void*)0);
    }
    return VO_TRUE;
}
