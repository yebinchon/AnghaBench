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
struct MPContext {int /*<<< orphan*/  input; TYPE_1__* opts; int /*<<< orphan*/  log; int /*<<< orphan*/  global; } ;
struct TYPE_2__ {int use_terminal; scalar_t__ consolecontrols; } ;

/* Variables and functions */
 int FUNC0 (struct MPContext*,struct MPContext*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct MPContext *mpctx, bool preinit)
{
    bool had_log_file = FUNC1(mpctx->global);

    FUNC2(mpctx->global, mpctx->opts);

    bool enable = mpctx->opts->use_terminal;
    bool enabled = FUNC0(mpctx, mpctx);
    if (enable != enabled) {
        if (enable && FUNC0(NULL, mpctx)) {
            FUNC4();
            enabled = true;
        } else if (!enable) {
            FUNC6();
            FUNC0(mpctx, NULL);
        }
    }

    if (FUNC1(mpctx->global) && !had_log_file)
        FUNC3(mpctx->log, false); // for log-file=... in config files

    if (enabled && !preinit && mpctx->opts->consolecontrols)
        FUNC5(mpctx->input);
}