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
struct command_ctx {struct mp_cmd_ctx* cache_dump_cmd; } ;
struct MPContext {int /*<<< orphan*/  demuxer; struct command_ctx* command_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSGL_ERR ; 
 int /*<<< orphan*/  MSGL_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,double,double,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_cmd_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_cmd_ctx*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct mp_cmd_ctx *cmd, double start, double end,
                         char *filename)
{
    struct MPContext *mpctx = cmd->mpctx;
    struct command_ctx *ctx = mpctx->command_ctx;

    FUNC2(mpctx);

    if (!mpctx->demuxer) {
        FUNC4(cmd, MSGL_ERR, "No demuxer open.");
        cmd->success = false;
        FUNC3(cmd);
        return;
    }

    FUNC4(cmd, MSGL_INFO, "Cache dumping started.");

    if (!FUNC1(mpctx->demuxer, start, end, filename)) {
        FUNC4(cmd, MSGL_INFO, "Cache dumping stopped.");
        FUNC3(cmd);
        return;
    }

    ctx->cache_dump_cmd = cmd;
    FUNC0(mpctx);
}