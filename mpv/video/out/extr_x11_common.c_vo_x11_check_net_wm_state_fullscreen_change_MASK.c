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
struct vo_x11_state {int wm_type; int fs; int pos_changed_during_fs; int size_changed_during_fs; int /*<<< orphan*/  nofsrc; int /*<<< orphan*/  pending_vo_events; int /*<<< orphan*/  window; scalar_t__ parent; } ;
struct vo {TYPE_1__* opts; struct vo_x11_state* x11; } ;
struct TYPE_2__ {int fullscreen; } ;
typedef  long Atom ;

/* Variables and functions */
 int /*<<< orphan*/  VO_EVENT_FULLSCREEN_STATE ; 
 long FUNC0 (struct vo_x11_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XA_ATOM ; 
 int /*<<< orphan*/  FUNC1 (long*) ; 
 int /*<<< orphan*/  _NET_WM_STATE ; 
 int /*<<< orphan*/  _NET_WM_STATE_FULLSCREEN ; 
 int vo_wm_FULLSCREEN ; 
 int /*<<< orphan*/  FUNC2 (struct vo*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*) ; 
 long* FUNC4 (struct vo_x11_state*,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static void FUNC5(struct vo *vo)
{
    struct vo_x11_state *x11 = vo->x11;

    if (x11->parent)
        return;

    if (x11->wm_type & vo_wm_FULLSCREEN) {
        int num_elems;
        long *elems = FUNC4(x11, x11->window, FUNC0(x11, _NET_WM_STATE),
                                       XA_ATOM, 32, &num_elems);
        int is_fullscreen = 0;
        if (elems) {
            Atom fullscreen_prop = FUNC0(x11, _NET_WM_STATE_FULLSCREEN);
            for (int n = 0; n < num_elems; n++) {
                if (elems[n] == fullscreen_prop) {
                    is_fullscreen = 1;
                    break;
                }
            }
            FUNC1(elems);
        }

        if ((vo->opts->fullscreen && !is_fullscreen) ||
            (!vo->opts->fullscreen && is_fullscreen))
        {
            vo->opts->fullscreen = is_fullscreen;
            x11->fs = is_fullscreen;
            x11->pending_vo_events |= VO_EVENT_FULLSCREEN_STATE;

            if (!is_fullscreen && (x11->pos_changed_during_fs ||
                                   x11->size_changed_during_fs))
            {
                FUNC2(vo, x11->pos_changed_during_fs,
                                       x11->size_changed_during_fs,
                                       x11->nofsrc);
            }

            x11->size_changed_during_fs = false;
            x11->pos_changed_during_fs = false;

            FUNC3(vo);
        }
    }
}