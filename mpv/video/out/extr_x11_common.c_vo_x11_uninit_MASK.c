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
struct vo_x11_state {scalar_t__ window; scalar_t__ rootwin; scalar_t__ colormap; scalar_t__* wakeup_pipe; int /*<<< orphan*/  screensaver_sem; int /*<<< orphan*/  screensaver_thread; int /*<<< orphan*/  screensaver_terminate; scalar_t__ screensaver_thread_running; scalar_t__ display; scalar_t__ xim; scalar_t__ xic; int /*<<< orphan*/  input_ctx; } ;
struct vo {struct vo_x11_state* x11; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo_x11_state*,char*) ; 
 int /*<<< orphan*/  MP_INPUT_RELEASE_ALL ; 
 scalar_t__ None ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct vo_x11_state*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct vo_x11_state*) ; 
 int /*<<< orphan*/ * x11_error_output ; 

void FUNC16(struct vo *vo)
{
    struct vo_x11_state *x11 = vo->x11;
    if (!x11)
        return;

    FUNC10(x11->input_ctx, MP_INPUT_RELEASE_ALL);

    FUNC14(x11, true);

    if (x11->window != None && x11->window != x11->rootwin) {
        FUNC7(x11->display, x11->window);
        FUNC4(x11->display, x11->window);
    }
    if (x11->xic)
        FUNC3(x11->xic);
    if (x11->colormap != None)
        FUNC5(vo->x11->display, x11->colormap);

    FUNC0(x11, "uninit ...\n");
    if (x11->xim)
        FUNC2(x11->xim);
    if (x11->display) {
        FUNC6(NULL);
        x11_error_output = NULL;
        FUNC1(x11->display);
    }

    if (x11->screensaver_thread_running) {
        FUNC8(&x11->screensaver_terminate, true);
        FUNC13(&x11->screensaver_sem);
        FUNC11(x11->screensaver_thread, NULL);
        FUNC12(&x11->screensaver_sem);
    }

    if (x11->wakeup_pipe[0] >= 0) {
        FUNC9(x11->wakeup_pipe[0]);
        FUNC9(x11->wakeup_pipe[1]);
    }

    FUNC15(x11);
    vo->x11 = NULL;
}