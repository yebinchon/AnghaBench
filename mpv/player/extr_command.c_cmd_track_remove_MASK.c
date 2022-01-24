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
struct track {int dummy; } ;
struct mp_cmd_ctx {int success; TYPE_2__* args; scalar_t__ priv; struct MPContext* mpctx; } ;
struct MPContext {scalar_t__ playback_initialized; } ;
struct TYPE_3__ {int /*<<< orphan*/  i; } ;
struct TYPE_4__ {TYPE_1__ v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,struct track*) ; 
 struct track* FUNC1 (struct MPContext*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,char*) ; 

__attribute__((used)) static void FUNC3(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;
    int type = *(int *)cmd->priv;

    struct track *t = FUNC1(mpctx, type, cmd->args[0].v.i);
    if (!t) {
        cmd->success = false;
        return;
    }

    FUNC0(mpctx, t);
    if (mpctx->playback_initialized)
        FUNC2(mpctx, "Track removed:");
}