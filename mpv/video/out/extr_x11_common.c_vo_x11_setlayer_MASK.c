#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vo_x11_state {int wm_type; long orig_layer; int /*<<< orphan*/  window; scalar_t__ parent; } ;
struct vo {struct vo_x11_state* x11; } ;

/* Variables and functions */
 long CurrentTime ; 
 int /*<<< orphan*/  FUNC0 (struct vo_x11_state*,char*,long,...) ; 
 long WIN_LAYER_ABOVE_DOCK ; 
 long WIN_LAYER_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (struct vo_x11_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XA_CARDINAL ; 
 int /*<<< orphan*/  _WIN_LAYER ; 
 int vo_wm_ABOVE ; 
 int vo_wm_LAYER ; 
 int vo_wm_STAYS_ON_TOP ; 
 int /*<<< orphan*/  FUNC2 (struct vo_x11_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,long*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vo_x11_state*,char*,long*) ; 
 int /*<<< orphan*/  FUNC4 (struct vo_x11_state*,char*,int) ; 

__attribute__((used)) static void FUNC5(struct vo *vo, bool ontop)
{
    struct vo_x11_state *x11 = vo->x11;
    if (x11->parent || !x11->window)
        return;

    if (x11->wm_type & (vo_wm_STAYS_ON_TOP | vo_wm_ABOVE)) {
        char *state = "_NET_WM_STATE_ABOVE";

        // Not in EWMH - but the old code preferred this (maybe it is "better")
        if (x11->wm_type & vo_wm_STAYS_ON_TOP)
            state = "_NET_WM_STATE_STAYS_ON_TOP";

        FUNC4(x11, state, ontop);

        FUNC0(x11, "NET style stay on top (%d). Using state %s.\n",
                   ontop, state);
    } else if (x11->wm_type & vo_wm_LAYER) {
        if (!x11->orig_layer) {
            x11->orig_layer = WIN_LAYER_NORMAL;
            FUNC2(x11, x11->window, FUNC1(x11, _WIN_LAYER),
                                  XA_CARDINAL, 32, &x11->orig_layer, sizeof(long));
            FUNC0(x11, "original window layer is %ld.\n", x11->orig_layer);
        }

        long params[5] = {0};
        // if not fullscreen, stay on default layer
        params[0] = ontop ? WIN_LAYER_ABOVE_DOCK : x11->orig_layer;
        params[1] = CurrentTime;
        FUNC0(x11, "Layered style stay on top (layer %ld).\n", params[0]);
        FUNC3(x11, "_WIN_LAYER", params);
    }
}