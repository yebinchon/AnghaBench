
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct vo_x11_state {int window; int dnd_requested_action; int dnd_src_window; scalar_t__ dnd_requested_format; int display; } ;
struct vo {struct vo_x11_state* x11; } ;
struct TYPE_8__ {int* l; } ;
struct TYPE_9__ {int window; int format; TYPE_1__ data; void* message_type; int send_event; scalar_t__ serial; int type; } ;
struct TYPE_11__ {TYPE_2__ xclient; } ;
typedef TYPE_4__ XEvent ;
struct TYPE_10__ {int* l; } ;
struct TYPE_12__ {void* message_type; TYPE_3__ data; } ;
typedef TYPE_5__ XClientMessageEvent ;
typedef int Window ;
typedef int Atom ;


 int ClientMessage ;
 int DND_PROPERTY ;
 int False ;
 int True ;
 void* XA (struct vo_x11_state*,int ) ;
 int XA_ATOM ;
 int XAs (struct vo_x11_state*,int ) ;
 int XConvertSelection (int ,void*,scalar_t__,int ,int,int) ;
 int XFree (int*) ;
 int XSendEvent (int ,int,int ,int ,TYPE_4__*) ;
 int XdndActionCopy ;
 int XdndDrop ;
 int XdndEnter ;
 int XdndLeave ;
 int XdndPosition ;
 int XdndSelection ;
 int XdndStatus ;
 int XdndTypeList ;
 int dnd_reset (struct vo*) ;
 int dnd_select_format (struct vo_x11_state*,int*,int) ;
 int* x11_get_property (struct vo_x11_state*,int,void*,int ,int,int*) ;

__attribute__((used)) static void vo_x11_dnd_handle_message(struct vo *vo, XClientMessageEvent *ce)
{
    struct vo_x11_state *x11 = vo->x11;

    if (!x11->window)
        return;

    if (ce->message_type == XA(x11, XdndEnter)) {
        x11->dnd_requested_format = 0;

        Window src = ce->data.l[0];
        if (ce->data.l[1] & 1) {
            int nitems;
            Atom *args = x11_get_property(x11, src, XA(x11, XdndTypeList),
                                          XA_ATOM, 32, &nitems);
            if (args) {
                dnd_select_format(x11, args, nitems);
                XFree(args);
            }
        } else {
            Atom args[3];
            for (int n = 2; n <= 4; n++)
                args[n - 2] = ce->data.l[n];
            dnd_select_format(x11, args, 3);
        }
    } else if (ce->message_type == XA(x11, XdndPosition)) {
        x11->dnd_requested_action = ce->data.l[4];

        Window src = ce->data.l[0];
        XEvent xev;

        xev.xclient.type = ClientMessage;
        xev.xclient.serial = 0;
        xev.xclient.send_event = True;
        xev.xclient.message_type = XA(x11, XdndStatus);
        xev.xclient.window = src;
        xev.xclient.format = 32;
        xev.xclient.data.l[0] = x11->window;
        xev.xclient.data.l[1] = x11->dnd_requested_format ? 1 : 0;
        xev.xclient.data.l[2] = 0;
        xev.xclient.data.l[3] = 0;
        xev.xclient.data.l[4] = XA(x11, XdndActionCopy);

        XSendEvent(x11->display, src, False, 0, &xev);
    } else if (ce->message_type == XA(x11, XdndDrop)) {
        x11->dnd_src_window = ce->data.l[0];
        XConvertSelection(x11->display, XA(x11, XdndSelection),
                          x11->dnd_requested_format, XAs(x11, DND_PROPERTY),
                          x11->window, ce->data.l[2]);
    } else if (ce->message_type == XA(x11, XdndLeave)) {
        dnd_reset(vo);
    }
}
