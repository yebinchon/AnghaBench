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
struct vo_x11_state {int wm_type; int fs; int size_changed_during_fs; int pos_changed_during_fs; int /*<<< orphan*/  window; int /*<<< orphan*/  display; int /*<<< orphan*/  input_ctx; } ;
struct vo {TYPE_1__* opts; struct vo_x11_state* x11; } ;
struct mp_rect {int dummy; } ;
struct TYPE_2__ {int fsscreen_id; scalar_t__ fullscreen; scalar_t__ all_workspaces; int /*<<< orphan*/  border; } ;
typedef  int /*<<< orphan*/  Atom ;

/* Variables and functions */
 int ButtonPressMask ; 
 int ButtonReleaseMask ; 
 int EnterWindowMask ; 
 int ExposureMask ; 
 int FocusChangeMask ; 
 int KeyPressMask ; 
 int KeyReleaseMask ; 
 int LeaveWindowMask ; 
 int PointerMotionMask ; 
 int /*<<< orphan*/  PropModeAppend ; 
 int /*<<< orphan*/  PropModeReplace ; 
 int PropertyChangeMask ; 
 int StructureNotifyMask ; 
 int /*<<< orphan*/  FUNC0 (struct vo_x11_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XA_ATOM ; 
 int /*<<< orphan*/  XA_CARDINAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  XEMBED_MAPPED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _NET_WM_DESKTOP ; 
 int /*<<< orphan*/  _NET_WM_STATE ; 
 int /*<<< orphan*/  _NET_WM_STATE_FULLSCREEN ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int vo_wm_FULLSCREEN ; 
 int /*<<< orphan*/  FUNC5 (struct vo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vo_x11_state*,long*) ; 
 int /*<<< orphan*/  FUNC7 (struct vo*,int,int,struct mp_rect) ; 
 int /*<<< orphan*/  FUNC8 (struct vo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vo*) ; 
 int /*<<< orphan*/  FUNC10 (struct vo_x11_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vo_x11_state*,char*,long*) ; 
 int /*<<< orphan*/  FUNC12 (struct vo_x11_state*,char*,int) ; 

__attribute__((used)) static void FUNC13(struct vo *vo, struct mp_rect rc)
{
    struct vo_x11_state *x11 = vo->x11;

    FUNC7(vo, true, true, rc);
    FUNC5(vo, vo->opts->border);

    if (vo->opts->fullscreen && (x11->wm_type & vo_wm_FULLSCREEN)) {
        Atom state = FUNC0(x11, _NET_WM_STATE_FULLSCREEN);
        FUNC1(x11->display, x11->window, FUNC0(x11, _NET_WM_STATE), XA_ATOM,
                        32, PropModeAppend, (unsigned char *)&state, 1);
        x11->fs = 1;
        // The "saved" positions are bogus, so reset them when leaving FS again.
        x11->size_changed_during_fs = true;
        x11->pos_changed_during_fs = true;
    }

    if (vo->opts->fsscreen_id != -1) {
        long params[5] = {0};
        if (vo->opts->fsscreen_id >= 0) {
            for (int n = 0; n < 4; n++)
                params[n] = vo->opts->fsscreen_id;
        } else {
            FUNC6(x11, &params[0]);
        }
        params[4] = 1; // source indication: normal
        FUNC11(x11, "_NET_WM_FULLSCREEN_MONITORS", params);
    }

    if (vo->opts->all_workspaces) {
        long v = 0xFFFFFFFF;
        FUNC1(x11->display, x11->window, FUNC0(x11, _NET_WM_DESKTOP),
                        XA_CARDINAL, 32, PropModeReplace, (unsigned char *)&v, 1);
    }

    FUNC9(vo);

    // map window
    int events = StructureNotifyMask | ExposureMask | PropertyChangeMask |
                 LeaveWindowMask | EnterWindowMask | FocusChangeMask;
    if (FUNC3(x11->input_ctx))
        events |= PointerMotionMask | ButtonPressMask | ButtonReleaseMask;
    if (FUNC4(x11->input_ctx))
        events |= KeyPressMask | KeyReleaseMask;
    FUNC8(vo, x11->display, x11->window, events);
    FUNC2(x11->display, x11->window);

    if (vo->opts->fullscreen && (x11->wm_type & vo_wm_FULLSCREEN))
        FUNC12(x11, "_NET_WM_STATE_FULLSCREEN", 1);

    FUNC10(x11, XEMBED_MAPPED);
}