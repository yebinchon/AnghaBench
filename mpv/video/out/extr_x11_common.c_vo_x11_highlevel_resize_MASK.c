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
struct mp_rect {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
struct vo_x11_state {int size_changed_during_fs; int pos_changed_during_fs; struct mp_rect nofsrc; } ;
struct vo {struct vo_x11_state* x11; struct mp_vo_opts* opts; } ;
struct mp_vo_opts {int force_window_position; scalar_t__ fullscreen; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mp_rect) ; 
 scalar_t__ FUNC1 (struct mp_rect) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*,int,int,struct mp_rect) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*,struct mp_rect,int) ; 

__attribute__((used)) static void FUNC4(struct vo *vo, struct mp_rect rc)
{
    struct mp_vo_opts *opts = vo->opts;
    struct vo_x11_state *x11 = vo->x11;

    bool reset_pos = opts->force_window_position;
    if (reset_pos) {
        x11->nofsrc = rc;
    } else {
        x11->nofsrc.x1 = x11->nofsrc.x0 + FUNC1(rc);
        x11->nofsrc.y1 = x11->nofsrc.y0 + FUNC0(rc);
    }

    if (opts->fullscreen) {
        x11->size_changed_during_fs = true;
        x11->pos_changed_during_fs = reset_pos;
        FUNC3(vo, rc, false);
    } else {
        FUNC2(vo, reset_pos, true, rc);
    }
}