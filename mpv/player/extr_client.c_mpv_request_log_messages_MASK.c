#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_1__* mpctx; int /*<<< orphan*/ * messages; } ;
typedef  TYPE_2__ mpv_handle ;
struct TYPE_5__ {int /*<<< orphan*/  global; } ;

/* Variables and functions */
 int MPV_ERROR_INVALID_PARAMETER ; 
 int MP_LOG_BUFFER_MSGL_TERM ; 
 int MSGL_MAX ; 
 int MSGL_V ; 
 char** mp_log_levels ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  msg_wakeup ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

int FUNC5(mpv_handle *ctx, const char *min_level)
{
    int level = -1;
    for (int n = 0; n < MSGL_MAX + 1; n++) {
        if (mp_log_levels[n] && FUNC4(min_level, mp_log_levels[n]) == 0) {
            level = n;
            break;
        }
    }
    if (FUNC4(min_level, "terminal-default") == 0)
        level = MP_LOG_BUFFER_MSGL_TERM;

    if (level < 0 && FUNC4(min_level, "no") != 0)
        return MPV_ERROR_INVALID_PARAMETER;

    FUNC2(&ctx->lock);
    FUNC0(ctx->messages);
    ctx->messages = NULL;
    if (level >= 0) {
        int size = level >= MSGL_V ? 10000 : 1000;
        ctx->messages = FUNC1(ctx->mpctx->global, size, level,
                                              msg_wakeup, ctx);
    }
    FUNC3(&ctx->lock);
    return 0;
}