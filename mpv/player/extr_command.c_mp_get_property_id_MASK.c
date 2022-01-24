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
struct command_ctx {TYPE_1__* properties; } ;
struct MPContext {struct command_ctx* command_ctx; } ;
struct TYPE_2__ {scalar_t__ name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,char const*) ; 

int FUNC1(struct MPContext *mpctx, const char *name)
{
    struct command_ctx *ctx = mpctx->command_ctx;
    for (int n = 0; ctx->properties[n].name; n++) {
        if (FUNC0(ctx->properties[n].name, name))
            return n;
    }
    return -1;
}