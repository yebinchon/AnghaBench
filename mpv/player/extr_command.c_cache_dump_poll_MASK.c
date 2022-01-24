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
struct mp_cmd_ctx {int success; TYPE_1__* abort; } ;
struct command_ctx {struct mp_cmd_ctx* cache_dump_cmd; } ;
struct MPContext {int demuxer; struct command_ctx* command_ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  cancel; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSGL_ERR ; 
 int /*<<< orphan*/  MSGL_INFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_cmd_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_cmd_ctx*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(struct MPContext *mpctx)
{
    struct command_ctx *ctx = mpctx->command_ctx;
    struct mp_cmd_ctx *cmd = ctx->cache_dump_cmd;

    if (!cmd)
        return;

    // Can't close demuxer without stopping dumping.
    FUNC0(mpctx->demuxer);

    if (FUNC3(cmd->abort->cancel)) {
        // Synchronous abort. In particular, the dump command shall not report
        // completion to the user before the dump target file was closed.
        FUNC2(mpctx->demuxer, 0, 0, NULL);
        FUNC0(FUNC1(mpctx->demuxer) <= 0);
    }

    int status = FUNC1(mpctx->demuxer);
    if (status <= 0) {
        if (status < 0) {
            FUNC5(cmd, MSGL_ERR, "Cache dumping stopped due to error.");
            cmd->success = false;
        } else {
            FUNC5(cmd, MSGL_INFO, "Cache dumping successfully ended.");
            cmd->success = true;
        }
        ctx->cache_dump_cmd = NULL;
        FUNC4(cmd);
    }
}