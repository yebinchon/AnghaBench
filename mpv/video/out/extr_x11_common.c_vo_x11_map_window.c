
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_x11_state {int wm_type; int fs; int size_changed_during_fs; int pos_changed_during_fs; int window; int display; int input_ctx; } ;
struct vo {TYPE_1__* opts; struct vo_x11_state* x11; } ;
struct mp_rect {int dummy; } ;
struct TYPE_2__ {int fsscreen_id; scalar_t__ fullscreen; scalar_t__ all_workspaces; int border; } ;
typedef int Atom ;


 int ButtonPressMask ;
 int ButtonReleaseMask ;
 int EnterWindowMask ;
 int ExposureMask ;
 int FocusChangeMask ;
 int KeyPressMask ;
 int KeyReleaseMask ;
 int LeaveWindowMask ;
 int PointerMotionMask ;
 int PropModeAppend ;
 int PropModeReplace ;
 int PropertyChangeMask ;
 int StructureNotifyMask ;
 int XA (struct vo_x11_state*,int ) ;
 int XA_ATOM ;
 int XA_CARDINAL ;
 int XChangeProperty (int ,int ,int ,int ,int,int ,unsigned char*,int) ;
 int XEMBED_MAPPED ;
 int XMapWindow (int ,int ) ;
 int _NET_WM_DESKTOP ;
 int _NET_WM_STATE ;
 int _NET_WM_STATE_FULLSCREEN ;
 scalar_t__ mp_input_mouse_enabled (int ) ;
 scalar_t__ mp_input_vo_keyboard_enabled (int ) ;
 int vo_wm_FULLSCREEN ;
 int vo_x11_decoration (struct vo*,int ) ;
 int vo_x11_get_bounding_monitors (struct vo_x11_state*,long*) ;
 int vo_x11_move_resize (struct vo*,int,int,struct mp_rect) ;
 int vo_x11_selectinput_witherr (struct vo*,int ,int ,int) ;
 int vo_x11_update_composition_hint (struct vo*) ;
 int vo_x11_xembed_update (struct vo_x11_state*,int ) ;
 int x11_send_ewmh_msg (struct vo_x11_state*,char*,long*) ;
 int x11_set_ewmh_state (struct vo_x11_state*,char*,int) ;

__attribute__((used)) static void vo_x11_map_window(struct vo *vo, struct mp_rect rc)
{
    struct vo_x11_state *x11 = vo->x11;

    vo_x11_move_resize(vo, 1, 1, rc);
    vo_x11_decoration(vo, vo->opts->border);

    if (vo->opts->fullscreen && (x11->wm_type & vo_wm_FULLSCREEN)) {
        Atom state = XA(x11, _NET_WM_STATE_FULLSCREEN);
        XChangeProperty(x11->display, x11->window, XA(x11, _NET_WM_STATE), XA_ATOM,
                        32, PropModeAppend, (unsigned char *)&state, 1);
        x11->fs = 1;

        x11->size_changed_during_fs = 1;
        x11->pos_changed_during_fs = 1;
    }

    if (vo->opts->fsscreen_id != -1) {
        long params[5] = {0};
        if (vo->opts->fsscreen_id >= 0) {
            for (int n = 0; n < 4; n++)
                params[n] = vo->opts->fsscreen_id;
        } else {
            vo_x11_get_bounding_monitors(x11, &params[0]);
        }
        params[4] = 1;
        x11_send_ewmh_msg(x11, "_NET_WM_FULLSCREEN_MONITORS", params);
    }

    if (vo->opts->all_workspaces) {
        long v = 0xFFFFFFFF;
        XChangeProperty(x11->display, x11->window, XA(x11, _NET_WM_DESKTOP),
                        XA_CARDINAL, 32, PropModeReplace, (unsigned char *)&v, 1);
    }

    vo_x11_update_composition_hint(vo);


    int events = StructureNotifyMask | ExposureMask | PropertyChangeMask |
                 LeaveWindowMask | EnterWindowMask | FocusChangeMask;
    if (mp_input_mouse_enabled(x11->input_ctx))
        events |= PointerMotionMask | ButtonPressMask | ButtonReleaseMask;
    if (mp_input_vo_keyboard_enabled(x11->input_ctx))
        events |= KeyPressMask | KeyReleaseMask;
    vo_x11_selectinput_witherr(vo, x11->display, x11->window, events);
    XMapWindow(x11->display, x11->window);

    if (vo->opts->fullscreen && (x11->wm_type & vo_wm_FULLSCREEN))
        x11_set_ewmh_state(x11, "_NET_WM_STATE_FULLSCREEN", 1);

    vo_x11_xembed_update(x11, XEMBED_MAPPED);
}
