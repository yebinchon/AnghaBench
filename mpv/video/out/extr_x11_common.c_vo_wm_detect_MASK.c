#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vo_x11_state {scalar_t__ parent; int /*<<< orphan*/  rootwin; } ;
struct vo {TYPE_1__* opts; struct vo_x11_state* x11; } ;
typedef  int /*<<< orphan*/  Window ;
struct TYPE_2__ {scalar_t__ x11_netwm; } ;
typedef  scalar_t__ Atom ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo_x11_state*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo_x11_state*,char*) ; 
 scalar_t__ FUNC2 (struct vo_x11_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XA_ATOM ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  _NET_SUPPORTED ; 
 int /*<<< orphan*/  _WIN_LAYER ; 
 int /*<<< orphan*/  _WIN_PROTOCOLS ; 
 int FUNC4 (struct vo_x11_state*,scalar_t__) ; 
 int vo_wm_FULLSCREEN ; 
 int vo_wm_LAYER ; 
 scalar_t__* FUNC5 (struct vo_x11_state*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC6(struct vo *vo)
{
    struct vo_x11_state *x11 = vo->x11;
    int i;
    int wm = 0;
    int nitems;
    Atom *args = NULL;
    Window win = x11->rootwin;

    if (x11->parent)
        return 0;

// -- supports layers
    args = FUNC5(x11, win, FUNC2(x11, _WIN_PROTOCOLS), XA_ATOM, 32,
                            &nitems);
    if (args) {
        for (i = 0; i < nitems; i++) {
            if (args[i] == FUNC2(x11, _WIN_LAYER)) {
                FUNC0(x11, "Detected wm supports layers.\n");
                wm |= vo_wm_LAYER;
            }
        }
        FUNC3(args);
    }
// --- netwm
    args = FUNC5(x11, win, FUNC2(x11, _NET_SUPPORTED), XA_ATOM, 32,
                            &nitems);
    if (args) {
        FUNC0(x11, "Detected wm supports NetWM.\n");
        if (vo->opts->x11_netwm >= 0) {
            for (i = 0; i < nitems; i++)
                wm |= FUNC4(vo->x11, args[i]);
        } else {
            FUNC0(x11, "NetWM usage disabled by user.\n");
        }
        FUNC3(args);
    }

    if (wm == 0)
        FUNC0(x11, "Unknown wm type...\n");
    if (vo->opts->x11_netwm > 0 && !(wm & vo_wm_FULLSCREEN)) {
        FUNC1(x11, "Forcing NetWM FULLSCREEN support.\n");
        wm |= vo_wm_FULLSCREEN;
    }
    return wm;
}