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
struct command_ctx {TYPE_2__* cache_dump_cmd; } ;
struct MPContext {struct command_ctx* command_ctx; } ;
struct TYPE_4__ {TYPE_1__* abort; } ;
struct TYPE_3__ {int /*<<< orphan*/  cancel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct MPContext *mpctx)
{
    struct command_ctx *ctx = mpctx->command_ctx;

    if (ctx->cache_dump_cmd)
        FUNC2(ctx->cache_dump_cmd->abort->cancel);
    FUNC1(mpctx);
    FUNC0(!ctx->cache_dump_cmd); // synchronous abort, must have worked
}