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
struct vo_internal {scalar_t__ wakeup_pts; int want_redraw; int request_redraw; int send_reset; int paused; int /*<<< orphan*/  dr_helper; int /*<<< orphan*/ * current_frame; int /*<<< orphan*/  lock; scalar_t__ terminate; int /*<<< orphan*/  dispatch; } ;
struct vo {int want_redraw; TYPE_1__* driver; struct vo_internal* in; } ;
typedef  scalar_t__ int64_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* uninit ) (struct vo*) ;int /*<<< orphan*/  (* control ) (struct vo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;scalar_t__ (* preinit ) (struct vo*) ;scalar_t__ get_image; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VOCTRL_CHECK_EVENTS ; 
 int /*<<< orphan*/  VOCTRL_PAUSE ; 
 int /*<<< orphan*/  VOCTRL_RESET ; 
 int /*<<< orphan*/  VOCTRL_RESUME ; 
 int /*<<< orphan*/  VO_EVENT_WIN_STATE ; 
 int /*<<< orphan*/  FUNC2 (struct vo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vo*) ; 
 int /*<<< orphan*/  FUNC5 (struct vo*) ; 
 int /*<<< orphan*/  get_image_vo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vo*,int) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct vo*) ; 
 int FUNC13 (struct vo*) ; 
 scalar_t__ FUNC14 (struct vo*) ; 
 int /*<<< orphan*/  FUNC15 (struct vo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct vo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct vo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct vo*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct vo*) ; 
 int /*<<< orphan*/  FUNC21 (struct vo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct vo*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (struct vo*) ; 

__attribute__((used)) static void *FUNC24(void *ptr)
{
    struct vo *vo = ptr;
    struct vo_internal *in = vo->in;
    bool vo_paused = false;

    FUNC9("vo");

    if (vo->driver->get_image) {
        in->dr_helper = FUNC4(in->dispatch, get_image_vo, vo);
        FUNC3(in->dr_helper);
    }

    int r = vo->driver->preinit(vo) ? -1 : 0;
    FUNC7(vo, r); // init barrier
    if (r < 0)
        goto done;

    FUNC12(vo);
    FUNC20(vo);
    FUNC21(vo, VO_EVENT_WIN_STATE);

    while (1) {
        FUNC6(vo->in->dispatch, 0);
        if (in->terminate)
            break;
        vo->driver->control(vo, VOCTRL_CHECK_EVENTS, NULL);
        bool working = FUNC13(vo);
        int64_t now = FUNC8();
        int64_t wait_until = now + (working ? 0 : (int64_t)1e9);

        FUNC10(&in->lock);
        if (in->wakeup_pts) {
            if (in->wakeup_pts > now) {
                wait_until = FUNC0(wait_until, in->wakeup_pts);
            } else {
                in->wakeup_pts = 0;
                FUNC23(vo);
            }
        }
        if (vo->want_redraw && !in->want_redraw) {
            vo->want_redraw = false;
            in->want_redraw = true;
            FUNC23(vo);
        }
        bool redraw = in->request_redraw;
        bool send_reset = in->send_reset;
        in->send_reset = false;
        bool send_pause = in->paused != vo_paused;
        vo_paused = in->paused;
        FUNC11(&in->lock);

        if (send_reset)
            vo->driver->control(vo, VOCTRL_RESET, NULL);
        if (send_pause)
            vo->driver->control(vo, vo_paused ? VOCTRL_PAUSE : VOCTRL_RESUME, NULL);
        if (wait_until > now && redraw) {
            FUNC2(vo); // now is a good time
            continue;
        }
        if (vo->want_redraw) // might have been set by VOCTRLs
            wait_until = 0;

        FUNC22(vo, wait_until);
    }
    FUNC5(vo); // implicitly synchronized
    FUNC19(in->current_frame);
    in->current_frame = NULL;
    vo->driver->uninit(vo);
done:
    FUNC1(&in->dr_helper);
    return NULL;
}