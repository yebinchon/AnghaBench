
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct vo_x11_state {int has_focus; int win_drag_button1_down; int window_hidden; int pseudo_mapped; int current_icc_screen; int ShmCompletionEvent; int xrandr_event; int ShmCompletionWaitCount; int pending_vo_events; int icc_profile_property; int parent; int input_ctx; int window; int * display; int fs; int compose_status; int xic; int no_autorepeat; int winrc; } ;
struct vo {struct vo_x11_state* x11; } ;
struct bstr {char* member_0; int member_1; } ;
typedef int buf ;
struct TYPE_15__ {int atom; } ;
struct TYPE_14__ {int * l; } ;
struct TYPE_21__ {TYPE_1__ data; int message_type; } ;
struct TYPE_19__ {int button; int state; } ;
struct TYPE_18__ {int mode; } ;
struct TYPE_17__ {int x_root; int y_root; int y; int x; } ;
struct TYPE_13__ {int state; } ;
struct TYPE_16__ {int window; } ;
struct TYPE_20__ {int type; TYPE_2__ xproperty; int xselection; TYPE_8__ xclient; TYPE_6__ xbutton; TYPE_5__ xcrossing; TYPE_4__ xmotion; TYPE_10__ xkey; TYPE_3__ xconfigure; } ;
typedef TYPE_7__ XEvent ;
typedef int Status ;
typedef int KeySym ;
typedef int Display ;






 int CurrentTime ;
 int MP_INPUT_RELEASE_ALL ;
 int MP_KEY_CLOSE_WIN ;
 int MP_KEY_MOUSE_BTN_COUNT ;
 int MP_KEY_MOUSE_ENTER ;
 int MP_KEY_MOUSE_LEAVE ;
 int MP_KEY_STATE_DOWN ;
 int MP_KEY_STATE_UP ;
 int MP_MBTN_BASE ;
 int MP_TRACE (struct vo_x11_state*,char*,...) ;
 int MP_VERBOSE (struct vo_x11_state*,char*) ;
 int MP_WARN (struct vo_x11_state*,char*) ;


 int None ;
 int NotifyNormal ;

 int RC_H (int ) ;
 int RC_W (int ) ;

 int VO_EVENT_EXPOSE ;
 int VO_EVENT_ICC_PROFILE_CHANGED ;
 int VO_EVENT_WIN_STATE ;
 int WM_DELETE_WINDOW ;
 int WM_PROTOCOLS ;
 int WM_STATE ;
 int XA (struct vo_x11_state*,int ) ;
 long XEMBED_REQUEST_FOCUS ;
 int XLookupBoth ;
 int XLookupChars ;
 int XLookupString (TYPE_10__*,char*,int,int *,int *) ;
 int XMoveResizeWindow (int *,int ,int ,int ,int ,int ) ;
 int XNextEvent (int *,TYPE_7__*) ;
 scalar_t__ XPending (int *) ;
 int XUngrabPointer (int *,int ) ;
 int Xutf8LookupString (int ,TYPE_10__*,char*,int,int *,int *) ;
 int _NET_FRAME_EXTENTS ;
 int _NET_WM_STATE ;
 int get_mods (int ) ;
 int mp_input_put_key (int ,int) ;
 int mp_input_put_key_utf8 (int ,int,struct bstr) ;
 int mp_input_set_mouse_pos (int ,int ,int ) ;
 int mp_input_test_dragging (int ,int ,int ) ;
 int release_all_keys (struct vo*) ;
 int update_vo_size (struct vo*) ;
 int vo_update_cursor (struct vo*) ;
 int vo_x11_check_net_wm_state_fullscreen_change (struct vo*) ;
 int vo_x11_dnd_handle_message (struct vo*,TYPE_8__*) ;
 int vo_x11_dnd_handle_selection (struct vo*,int *) ;
 int vo_x11_lookupkey (int ) ;
 int vo_x11_update_geometry (struct vo*) ;
 int vo_x11_xembed_handle_message (struct vo*,TYPE_8__*) ;
 int vo_x11_xembed_send_message (struct vo_x11_state*,long*) ;
 int x11_send_ewmh_msg (struct vo_x11_state*,char*,long*) ;
 int xrandr_read (struct vo_x11_state*) ;
 int xscreensaver_heartbeat (struct vo_x11_state*) ;

void vo_x11_check_events(struct vo *vo)
{
    struct vo_x11_state *x11 = vo->x11;
    Display *display = vo->x11->display;
    XEvent Event;

    xscreensaver_heartbeat(vo->x11);

    while (XPending(display)) {
        XNextEvent(display, &Event);
        MP_TRACE(x11, "XEvent: %d\n", Event.type);
        switch (Event.type) {
        case 137:
            x11->pending_vo_events |= VO_EVENT_EXPOSE;
            break;
        case 140:
            if (x11->window == None)
                break;
            vo_x11_update_geometry(vo);
            if (x11->parent && Event.xconfigure.window == x11->parent) {
                MP_TRACE(x11, "adjusting embedded window position\n");
                XMoveResizeWindow(x11->display, x11->window,
                                  0, 0, RC_W(x11->winrc), RC_H(x11->winrc));
            }
            break;
        case 134: {
            char buf[100];
            KeySym keySym = 0;
            int modifiers = get_mods(Event.xkey.state);
            if (x11->no_autorepeat)
                modifiers |= MP_KEY_STATE_DOWN;
            if (x11->xic) {
                Status status;
                int len = Xutf8LookupString(x11->xic, &Event.xkey, buf,
                                            sizeof(buf), &keySym, &status);
                int mpkey = vo_x11_lookupkey(keySym);
                if (mpkey) {
                    mp_input_put_key(x11->input_ctx, mpkey | modifiers);
                } else if (status == XLookupChars || status == XLookupBoth) {
                    struct bstr t = { buf, len };
                    mp_input_put_key_utf8(x11->input_ctx, modifiers, t);
                }
            } else {
                XLookupString(&Event.xkey, buf, sizeof(buf), &keySym,
                              &x11->compose_status);
                int mpkey = vo_x11_lookupkey(keySym);
                if (mpkey)
                    mp_input_put_key(x11->input_ctx, mpkey | modifiers);
            }
            break;
        }
        case 136:
            x11->has_focus = 1;
            vo_update_cursor(vo);
            break;
        case 135:
            release_all_keys(vo);
            x11->has_focus = 0;
            vo_update_cursor(vo);
            break;
        case 133:
            release_all_keys(vo);
            break;
        case 130:
            if (x11->win_drag_button1_down && !x11->fs &&
                !mp_input_test_dragging(x11->input_ctx, Event.xmotion.x,
                                                        Event.xmotion.y))
            {
                mp_input_put_key(x11->input_ctx, MP_INPUT_RELEASE_ALL);
                XUngrabPointer(x11->display, CurrentTime);

                long params[5] = {
                    Event.xmotion.x_root, Event.xmotion.y_root,
                    8,
                    1,
                    1,
                };
                x11_send_ewmh_msg(x11, "_NET_WM_MOVERESIZE", params);
            } else {
                mp_input_set_mouse_pos(x11->input_ctx, Event.xmotion.x,
                                                       Event.xmotion.y);
            }
            x11->win_drag_button1_down = 0;
            break;
        case 132:
            if (Event.xcrossing.mode != NotifyNormal)
                break;
            x11->win_drag_button1_down = 0;
            mp_input_put_key(x11->input_ctx, MP_KEY_MOUSE_LEAVE);
            break;
        case 138:
            if (Event.xcrossing.mode != NotifyNormal)
                break;
            mp_input_put_key(x11->input_ctx, MP_KEY_MOUSE_ENTER);
            break;
        case 143:
            if (Event.xbutton.button - 1 >= MP_KEY_MOUSE_BTN_COUNT)
                break;
            if (Event.xbutton.button == 1)
                x11->win_drag_button1_down = 1;
            mp_input_put_key(x11->input_ctx,
                             (MP_MBTN_BASE + Event.xbutton.button - 1) |
                             get_mods(Event.xbutton.state) | MP_KEY_STATE_DOWN);
            long msg[4] = {XEMBED_REQUEST_FOCUS};
            vo_x11_xembed_send_message(x11, msg);
            break;
        case 142:
            if (Event.xbutton.button - 1 >= MP_KEY_MOUSE_BTN_COUNT)
                break;
            if (Event.xbutton.button == 1)
                x11->win_drag_button1_down = 0;
            mp_input_put_key(x11->input_ctx,
                             (MP_MBTN_BASE + Event.xbutton.button - 1) |
                             get_mods(Event.xbutton.state) | MP_KEY_STATE_UP);
            break;
        case 131:
            x11->window_hidden = 0;
            x11->pseudo_mapped = 1;
            x11->current_icc_screen = -1;
            vo_x11_update_geometry(vo);
            break;
        case 139:
            MP_WARN(x11, "Our window was destroyed, exiting\n");
            mp_input_put_key(x11->input_ctx, MP_KEY_CLOSE_WIN);
            x11->window = 0;
            break;
        case 141:
            if (Event.xclient.message_type == XA(x11, WM_PROTOCOLS) &&
                Event.xclient.data.l[0] == XA(x11, WM_DELETE_WINDOW))
                mp_input_put_key(x11->input_ctx, MP_KEY_CLOSE_WIN);
            vo_x11_dnd_handle_message(vo, &Event.xclient);
            vo_x11_xembed_handle_message(vo, &Event.xclient);
            break;
        case 128:
            vo_x11_dnd_handle_selection(vo, &Event.xselection);
            break;
        case 129:
            if (Event.xproperty.atom == XA(x11, _NET_FRAME_EXTENTS) ||
                Event.xproperty.atom == XA(x11, WM_STATE))
            {
                if (!x11->pseudo_mapped && !x11->parent) {
                    MP_VERBOSE(x11, "not waiting for MapNotify\n");
                    x11->pseudo_mapped = 1;
                }
            } else if (Event.xproperty.atom == XA(x11, _NET_WM_STATE)) {
                x11->pending_vo_events |= VO_EVENT_WIN_STATE;
                vo_x11_check_net_wm_state_fullscreen_change(vo);
            } else if (Event.xproperty.atom == x11->icc_profile_property) {
                x11->pending_vo_events |= VO_EVENT_ICC_PROFILE_CHANGED;
            }
            break;
        default:
            if (Event.type == x11->ShmCompletionEvent) {
                if (x11->ShmCompletionWaitCount > 0)
                    x11->ShmCompletionWaitCount--;
            }
            if (Event.type == x11->xrandr_event) {
                xrandr_read(x11);
                vo_x11_update_geometry(vo);
            }
            break;
        }
    }

    update_vo_size(vo);
}
