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
struct command_ctx {int silence_option_deprecations; int /*<<< orphan*/  properties; } ;
struct MPContext {int /*<<< orphan*/  log; struct command_ctx* command_ctx; } ;

/* Variables and functions */
 int M_PROPERTY_OK ; 
 scalar_t__ FUNC0 (int,void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,void*,struct MPContext*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPContext*,char*) ; 

__attribute__((used)) static int FUNC3(const char *name, int action, void *val,
                                 struct MPContext *ctx)
{
    struct command_ctx *cmd = ctx->command_ctx;
    cmd->silence_option_deprecations += 1;
    int r = FUNC1(ctx->log, cmd->properties, name, action, val, ctx);
    cmd->silence_option_deprecations -= 1;
    if (r == M_PROPERTY_OK && FUNC0(action, val))
        FUNC2(ctx, (char *)name);
    return r;
}