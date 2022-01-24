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
struct track {int /*<<< orphan*/  type; scalar_t__ external_filename; scalar_t__ is_external; } ;
struct mp_cmd_ctx {int success; TYPE_3__* abort; TYPE_2__* args; scalar_t__ priv; struct MPContext* mpctx; } ;
struct MPContext {struct track** tracks; int /*<<< orphan*/  playback_initialized; } ;
struct TYPE_6__ {int /*<<< orphan*/  cancel; } ;
struct TYPE_4__ {int /*<<< orphan*/  i; } ;
struct TYPE_5__ {TYPE_1__ v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*) ; 
 int FUNC1 (struct MPContext*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,struct track*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPContext*,int /*<<< orphan*/ ,struct track*,int /*<<< orphan*/ ) ; 
 struct track* FUNC4 (struct MPContext*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC8(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;
    int type = *(int *)cmd->priv;

    if (!mpctx->playback_initialized) {
        FUNC0(mpctx, "Cannot reload while not initialized.\n");
        cmd->success = false;
        return;
    }

    struct track *t = FUNC4(mpctx, type, cmd->args[0].v.i);
    int nt_num = -1;

    if (t && t->is_external && t->external_filename) {
        char *filename = FUNC7(NULL, t->external_filename);
        FUNC2(mpctx, t);
        nt_num = FUNC1(mpctx, filename, type, cmd->abort->cancel);
        FUNC6(filename);
    }

    if (nt_num < 0) {
        cmd->success = false;
        return;
    }

    struct track *nt = mpctx->tracks[nt_num];
    FUNC3(mpctx, nt->type, nt, 0);
    FUNC5(mpctx, "Reloaded:");
}