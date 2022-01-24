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
struct mp_cmd_ctx {int success; struct MPContext* mpctx; } ;
struct MPContext {int /*<<< orphan*/  playback_initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,int) ; 

__attribute__((used)) static void FUNC1(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    if (!mpctx->playback_initialized) {
        cmd->success = false;
        return;
    }

    FUNC0(mpctx, -1);
}