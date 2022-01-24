#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct MPContext {scalar_t__ stop_play; TYPE_2__* playlist; TYPE_1__* opts; } ;
struct TYPE_4__ {int /*<<< orphan*/  current; } ;
struct TYPE_3__ {scalar_t__ player_idle_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_EVENT_IDLE ; 
 scalar_t__ PT_QUIT ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC4 (struct MPContext*) ; 

void FUNC5(struct MPContext *mpctx)
{
    // ================= idle loop (STOP state) =========================
    bool need_reinit = true;
    while (mpctx->opts->player_idle_mode && !mpctx->playlist->current
           && mpctx->stop_play != PT_QUIT)
    {
        if (need_reinit) {
            FUNC4(mpctx);
            FUNC0(mpctx, true);
            FUNC3(mpctx);
            FUNC2(mpctx, MPV_EVENT_IDLE, NULL);
            need_reinit = false;
        }
        FUNC1(mpctx);
    }
}