#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vo_x11_state {int mouse_cursor_set; scalar_t__ parent; scalar_t__ rootwin; scalar_t__ window; int /*<<< orphan*/ * display; int /*<<< orphan*/  mouse_cursor_visible; scalar_t__ has_focus; } ;
struct vo {struct vo_x11_state* x11; } ;
struct TYPE_6__ {int /*<<< orphan*/  pixel; } ;
typedef  TYPE_1__ XColor ;
typedef  scalar_t__ Window ;
typedef  scalar_t__ Pixmap ;
typedef  int /*<<< orphan*/  Display ;
typedef  int /*<<< orphan*/  Cursor ;
typedef  int /*<<< orphan*/  Colormap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ None ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct vo *vo)
{
    Cursor no_ptr;
    Pixmap bm_no;
    XColor black, dummy;
    Colormap colormap;
    const char bm_no_data[] = {0, 0, 0, 0, 0, 0, 0, 0};
    struct vo_x11_state *x11 = vo->x11;
    Display *disp = x11->display;
    Window win = x11->window;
    bool should_hide = x11->has_focus && !x11->mouse_cursor_visible;

    if (should_hide == x11->mouse_cursor_set)
        return;

    x11->mouse_cursor_set = should_hide;

    if (x11->parent == x11->rootwin || !win)
        return;                 // do not hide if playing on the root window

    if (x11->mouse_cursor_set) {
        colormap = FUNC0(disp, FUNC1(disp));
        if (!FUNC2(disp, colormap, "black", &black, &dummy))
            return; // color alloc failed, give up
        bm_no = FUNC3(disp, win, bm_no_data, 8, 8);
        no_ptr = FUNC4(disp, bm_no, bm_no, &black, &black, 0, 0);
        FUNC5(disp, win, no_ptr);
        FUNC7(disp, no_ptr);
        if (bm_no != None)
            FUNC8(disp, bm_no);
        FUNC6(disp, colormap, &black.pixel, 1, 0);
    } else {
        FUNC5(x11->display, x11->window, 0);
    }
}