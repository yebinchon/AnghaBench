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
struct command_ctx {int /*<<< orphan*/  hotplug; int /*<<< orphan*/  cache_dump_cmd; } ;
struct MPContext {struct command_ctx* command_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*) ; 
 int /*<<< orphan*/  FUNC3 (struct command_ctx*) ; 

void FUNC4(struct MPContext *mpctx)
{
    struct command_ctx *ctx = mpctx->command_ctx;

    FUNC1(!ctx->cache_dump_cmd); // closing the demuxer must have aborted it

    FUNC2(mpctx);
    FUNC0(ctx->hotplug);

    FUNC3(mpctx->command_ctx);
    mpctx->command_ctx = NULL;
}