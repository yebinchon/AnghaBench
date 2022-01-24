#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct vo_x11_state {scalar_t__ window; scalar_t__ colormap; int mouse_cursor_set; int mouse_cursor_visible; scalar_t__ parent; scalar_t__ xim; scalar_t__ xic; int /*<<< orphan*/  display; scalar_t__ rootwin; int /*<<< orphan*/  screen; } ;
struct vo {struct vo_x11_state* x11; } ;
struct mp_rect {int /*<<< orphan*/  y0; int /*<<< orphan*/  x0; } ;
struct TYPE_8__ {int /*<<< orphan*/  depth; } ;
typedef  TYPE_1__ XWindowAttributes ;
struct TYPE_9__ {int /*<<< orphan*/  visual; int /*<<< orphan*/  depth; } ;
typedef  TYPE_2__ XVisualInfo ;
struct TYPE_10__ {scalar_t__ colormap; int /*<<< orphan*/  border_pixel; } ;
typedef  TYPE_3__ XSetWindowAttributes ;
typedef  scalar_t__ Window ;
typedef  int /*<<< orphan*/  Atom ;

/* Variables and functions */
 int /*<<< orphan*/  AllocNone ; 
 unsigned long CWBorderPixel ; 
 unsigned long CWColormap ; 
 int /*<<< orphan*/  CopyFromParent ; 
 scalar_t__ None ; 
 int /*<<< orphan*/  FUNC0 (struct mp_rect) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_rect) ; 
 int /*<<< orphan*/  TrueColor ; 
 int /*<<< orphan*/  WM_DELETE_WINDOW ; 
 int /*<<< orphan*/  FUNC2 (struct vo_x11_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__*) ; 
 int XIMPreeditNone ; 
 int XIMStatusNone ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  XNClientWindow ; 
 int /*<<< orphan*/  XNFocusWindow ; 
 int /*<<< orphan*/  XNInputStyle ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  _GTK_THEME_VARIANT ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct vo*) ; 
 int /*<<< orphan*/  FUNC11 (struct vo*) ; 
 int /*<<< orphan*/  FUNC12 (struct vo*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct vo_x11_state*) ; 
 int /*<<< orphan*/  FUNC14 (struct vo*) ; 
 int /*<<< orphan*/  FUNC15 (struct vo*) ; 
 int /*<<< orphan*/  FUNC16 (struct vo_x11_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct vo *vo, XVisualInfo *vis,
                                 struct mp_rect rc)
{
    struct vo_x11_state *x11 = vo->x11;

    FUNC9(x11->window == None);
    FUNC9(!x11->xic);

    XVisualInfo vinfo_storage;
    if (!vis) {
        vis = &vinfo_storage;
        XWindowAttributes att;
        FUNC6(x11->display, x11->rootwin, &att);
        FUNC7(x11->display, x11->screen, att.depth, TrueColor, vis);
    }

    if (x11->colormap == None) {
        x11->colormap = FUNC3(x11->display, x11->rootwin,
                                        vis->visual, AllocNone);
    }

    unsigned long xswamask = CWBorderPixel | CWColormap;
    XSetWindowAttributes xswa = {
        .border_pixel = 0,
        .colormap = x11->colormap,
    };

    Window parent = x11->parent;
    if (!parent)
        parent = x11->rootwin;

    x11->window =
        FUNC5(x11->display, parent, rc.x0, rc.y0, FUNC1(rc), FUNC0(rc), 0,
                      vis->depth, CopyFromParent, vis->visual, xswamask, &xswa);
    Atom protos[1] = {FUNC2(x11, WM_DELETE_WINDOW)};
    FUNC8(x11->display, x11->window, protos, 1);

    x11->mouse_cursor_set = false;
    x11->mouse_cursor_visible = true;
    FUNC10(vo);

    if (x11->xim) {
        x11->xic = FUNC4(x11->xim,
                             XNInputStyle, XIMPreeditNone | XIMStatusNone,
                             XNClientWindow, x11->window,
                             XNFocusWindow, x11->window,
                             NULL);
    }

    if (!x11->parent) {
        FUNC14(vo);
        FUNC13(x11);
        FUNC15(vo);
        FUNC11(vo);
        FUNC12(vo, FUNC2(x11, _GTK_THEME_VARIANT), "dark");
    }
    FUNC16(x11, 0);
}