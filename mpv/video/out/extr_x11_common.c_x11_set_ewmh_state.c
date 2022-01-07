
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_x11_state {int display; } ;


 int False ;
 long NET_WM_STATE_ADD ;
 long NET_WM_STATE_REMOVE ;
 long XInternAtom (int ,char*,int ) ;
 int x11_send_ewmh_msg (struct vo_x11_state*,char*,long*) ;

__attribute__((used)) static void x11_set_ewmh_state(struct vo_x11_state *x11, char *state, bool set)
{
    long params[5] = {
        set ? NET_WM_STATE_ADD : NET_WM_STATE_REMOVE,
        XInternAtom(x11->display, state, False),
    };
    x11_send_ewmh_msg(x11, "_NET_WM_STATE", params);
}
