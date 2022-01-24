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
struct command_ctx {int /*<<< orphan*/  properties; } ;
struct MPContext {struct command_ctx* command_ctx; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char const*,struct MPContext*) ; 

char *FUNC1(struct MPContext *mpctx, const char *str)
{
    struct command_ctx *ctx = mpctx->command_ctx;
    return FUNC0(ctx->properties, str, mpctx);
}