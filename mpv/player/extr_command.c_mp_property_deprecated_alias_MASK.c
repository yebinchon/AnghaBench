#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct m_property {char* priv; scalar_t__ name; } ;
struct command_ctx {int num_warned_deprecated; int /*<<< orphan*/ * warned_deprecated; } ;
struct TYPE_3__ {struct command_ctx* command_ctx; } ;
typedef  TYPE_1__ MPContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct command_ctx*,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,scalar_t__,char const*) ; 
 int FUNC2 (char const*,int,void*,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(void *ctx, struct m_property *prop,
                                        int action, void *arg)
{
    MPContext *mpctx = ctx;
    struct command_ctx *cmd = mpctx->command_ctx;
    const char *real_property = prop->priv;
    for (int n = 0; n < cmd->num_warned_deprecated; n++) {
        if (FUNC3(cmd->warned_deprecated[n], prop->name) == 0)
            goto done;
    }
    FUNC1(mpctx, "Warning: property '%s' was replaced with '%s' and "
            "might be removed in the future.\n", prop->name, real_property);
    FUNC0(cmd, cmd->warned_deprecated, cmd->num_warned_deprecated,
                     (char *)prop->name);

done:
    return FUNC2(real_property, action, arg, ctx);
}