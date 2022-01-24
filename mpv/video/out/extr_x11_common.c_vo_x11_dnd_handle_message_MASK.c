#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct vo_x11_state {int window; int dnd_requested_action; int dnd_src_window; scalar_t__ dnd_requested_format; int /*<<< orphan*/  display; } ;
struct vo {struct vo_x11_state* x11; } ;
struct TYPE_8__ {int* l; } ;
struct TYPE_9__ {int window; int format; TYPE_1__ data; void* message_type; int /*<<< orphan*/  send_event; scalar_t__ serial; int /*<<< orphan*/  type; } ;
struct TYPE_11__ {TYPE_2__ xclient; } ;
typedef  TYPE_4__ XEvent ;
struct TYPE_10__ {int* l; } ;
struct TYPE_12__ {void* message_type; TYPE_3__ data; } ;
typedef  TYPE_5__ XClientMessageEvent ;
typedef  int Window ;
typedef  int Atom ;

/* Variables and functions */
 int /*<<< orphan*/  ClientMessage ; 
 int /*<<< orphan*/  DND_PROPERTY ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  True ; 
 void* FUNC0 (struct vo_x11_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XA_ATOM ; 
 int /*<<< orphan*/  FUNC1 (struct vo_x11_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  XdndActionCopy ; 
 int /*<<< orphan*/  XdndDrop ; 
 int /*<<< orphan*/  XdndEnter ; 
 int /*<<< orphan*/  XdndLeave ; 
 int /*<<< orphan*/  XdndPosition ; 
 int /*<<< orphan*/  XdndSelection ; 
 int /*<<< orphan*/  XdndStatus ; 
 int /*<<< orphan*/  XdndTypeList ; 
 int /*<<< orphan*/  FUNC5 (struct vo*) ; 
 int /*<<< orphan*/  FUNC6 (struct vo_x11_state*,int*,int) ; 
 int* FUNC7 (struct vo_x11_state*,int,void*,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static void FUNC8(struct vo *vo, XClientMessageEvent *ce)
{
    struct vo_x11_state *x11 = vo->x11;

    if (!x11->window)
        return;

    if (ce->message_type == FUNC0(x11, XdndEnter)) {
        x11->dnd_requested_format = 0;

        Window src = ce->data.l[0];
        if (ce->data.l[1] & 1) {
            int nitems;
            Atom *args = FUNC7(x11, src, FUNC0(x11, XdndTypeList),
                                          XA_ATOM, 32, &nitems);
            if (args) {
                FUNC6(x11, args, nitems);
                FUNC3(args);
            }
        } else {
            Atom args[3];
            for (int n = 2; n <= 4; n++)
                args[n - 2] = ce->data.l[n];
            FUNC6(x11, args, 3);
        }
    } else if (ce->message_type == FUNC0(x11, XdndPosition)) {
        x11->dnd_requested_action = ce->data.l[4];

        Window src = ce->data.l[0];
        XEvent xev;

        xev.xclient.type = ClientMessage;
        xev.xclient.serial = 0;
        xev.xclient.send_event = True;
        xev.xclient.message_type = FUNC0(x11, XdndStatus);
        xev.xclient.window = src;
        xev.xclient.format = 32;
        xev.xclient.data.l[0] = x11->window;
        xev.xclient.data.l[1] = x11->dnd_requested_format ? 1 : 0;
        xev.xclient.data.l[2] = 0;
        xev.xclient.data.l[3] = 0;
        xev.xclient.data.l[4] = FUNC0(x11, XdndActionCopy);

        FUNC4(x11->display, src, False, 0, &xev);
    } else if (ce->message_type == FUNC0(x11, XdndDrop)) {
        x11->dnd_src_window = ce->data.l[0];
        FUNC2(x11->display, FUNC0(x11, XdndSelection),
                          x11->dnd_requested_format, FUNC1(x11, DND_PROPERTY),
                          x11->window, ce->data.l[2]);
    } else if (ce->message_type == FUNC0(x11, XdndLeave)) {
        FUNC5(vo);
    }
}