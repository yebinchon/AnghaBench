#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mp_log {int dummy; } ;
struct mp_cmd_arg {int /*<<< orphan*/  member_0; int /*<<< orphan*/  v; struct m_option const* type; } ;
struct mp_cmd {int nargs; struct mp_cmd_arg* args; int /*<<< orphan*/  name; int /*<<< orphan*/  def; } ;
struct m_option {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  string; } ;
struct TYPE_6__ {scalar_t__ format; TYPE_1__ u; } ;
typedef  TYPE_2__ mpv_node ;

/* Variables and functions */
 scalar_t__ MPV_FORMAT_STRING ; 
 int /*<<< orphan*/  FUNC0 (struct mp_cmd*,struct mp_cmd_arg*,int,struct mp_cmd_arg) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct m_option* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mp_log*,struct m_option const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC5 (struct m_option const*,void*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_log*,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static bool FUNC8(struct mp_log *log, struct mp_cmd *cmd, int i,
                         mpv_node *val)
{
    const char *name = FUNC2(cmd->def, i);

    const struct m_option *opt = FUNC3(cmd->def, i);
    if (!opt) {
        FUNC7(log, "Command %s: has only %d arguments.\n", cmd->name, i);
        return false;
    }

    if (i < cmd->nargs && cmd->args[i].type) {
        FUNC7(log, "Command %s: argument %s was already set.\n", cmd->name, name);
        return false;
    }

    struct mp_cmd_arg arg = {.type = opt};
    void *dst = &arg.v;
    if (val->format == MPV_FORMAT_STRING) {
        int r = FUNC4(log, opt, FUNC1(cmd->name),
                                FUNC1(val->u.string), dst);
        if (r < 0) {
            FUNC7(log, "Command %s: argument %s can't be parsed: %s.\n",
                   cmd->name, name, FUNC6(r));
            return false;
        }
    } else {
        int r = FUNC5(opt, dst, val);
        if (r < 0) {
            FUNC7(log, "Command %s: argument %s has incompatible type.\n",
                   cmd->name, name);
            return false;
        }
    }

    // (leave unset arguments blank, to be set later or checked by finish_cmd())
    while (i >= cmd->nargs) {
        struct mp_cmd_arg t = {0};
        FUNC0(cmd, cmd->args, cmd->nargs, t);
    }

    cmd->args[i] = arg;
    return true;
}