#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct track {scalar_t__ is_external; } ;
struct mp_cmd_ctx {int success; TYPE_3__* args; TYPE_1__* abort; struct MPContext* mpctx; } ;
struct MPContext {scalar_t__ playback_initialized; scalar_t__ stop_play; } ;
struct TYPE_5__ {int /*<<< orphan*/  i; } ;
struct TYPE_6__ {TYPE_2__ v; } ;
struct TYPE_4__ {int /*<<< orphan*/  cancel; } ;

/* Variables and functions */
 int /*<<< orphan*/  STREAM_AUDIO ; 
 int /*<<< orphan*/  STREAM_SUB ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*,int /*<<< orphan*/ ,struct track*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,char*) ; 
 struct track* FUNC3 (struct MPContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;

    if (mpctx->stop_play) {
        cmd->success = false;
        return;
    }

    FUNC0(mpctx, cmd->abort->cancel);
    if (!cmd->args[0].v.i && mpctx->playback_initialized) {
        // somewhat fuzzy and not ideal
        struct track *a = FUNC3(mpctx, 0, STREAM_AUDIO);
        if (a && a->is_external)
            FUNC1(mpctx, STREAM_AUDIO, a, 0);
        struct track *s = FUNC3(mpctx, 0, STREAM_SUB);
        if (s && s->is_external)
            FUNC1(mpctx, STREAM_SUB, s, 0);

        FUNC2(mpctx, "Track list:\n");
    }
}