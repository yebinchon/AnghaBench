#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mp_log {int dummy; } ;
struct mp_cmd_arg {int /*<<< orphan*/  v; struct m_option const* type; } ;
struct mp_cmd {int nargs; int flags; TYPE_1__* def; struct mp_cmd_arg* args; int /*<<< orphan*/  name; } ;
struct m_option {int flags; scalar_t__ defval; } ;
struct TYPE_4__ {scalar_t__ default_async; } ;

/* Variables and functions */
 int MP_ASYNC_CMD ; 
 int MP_CMD_DEF_MAX_ARGS ; 
 int MP_CMD_OPT_ARG ; 
 int MP_SYNC_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct mp_cmd*,struct mp_cmd_arg*,int,struct mp_cmd_arg) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 struct m_option* FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct m_option const*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_log*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct mp_log *log, struct mp_cmd *cmd)
{
    for (int i = 0; i < MP_CMD_DEF_MAX_ARGS; i++) {
        // (type==NULL is used for yet unset arguments)
        if (i < cmd->nargs && cmd->args[i].type)
            continue;
        const struct m_option *opt = FUNC3(cmd->def, i);
        if (i >= cmd->nargs && (!opt || FUNC4(cmd->def, i)))
            break;
        if (!opt->defval && !(opt->flags & MP_CMD_OPT_ARG)) {
            FUNC6(log, "Command %s: required argument %s not set.\n",
                   cmd->name, FUNC2(cmd->def, i));
            return false;
        }
        struct mp_cmd_arg arg = {.type = opt};
        if (opt->defval)
            FUNC5(opt, &arg.v, opt->defval);
        FUNC1(i <= cmd->nargs);
        if (i == cmd->nargs) {
            FUNC0(cmd, cmd->args, cmd->nargs, arg);
        } else {
            cmd->args[i] = arg;
        }
    }

    if (!(cmd->flags & (MP_ASYNC_CMD | MP_SYNC_CMD)))
        cmd->flags |= cmd->def->default_async ? MP_ASYNC_CMD : MP_SYNC_CMD;

    return true;
}