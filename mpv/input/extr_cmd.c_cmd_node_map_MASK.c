#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct mp_log {int dummy; } ;
struct mp_cmd {int /*<<< orphan*/  name; TYPE_3__* def; } ;
struct TYPE_13__ {int num; char** keys; TYPE_5__* values; } ;
typedef  TYPE_4__ mpv_node_list ;
struct TYPE_10__ {int /*<<< orphan*/  string; TYPE_4__* list; } ;
struct TYPE_14__ {scalar_t__ format; TYPE_1__ u; } ;
typedef  TYPE_5__ mpv_node ;
struct TYPE_12__ {TYPE_2__* args; scalar_t__ vararg; } ;
struct TYPE_11__ {char* name; } ;

/* Variables and functions */
 scalar_t__ MPV_FORMAT_NODE_ARRAY ; 
 scalar_t__ MPV_FORMAT_NODE_MAP ; 
 scalar_t__ MPV_FORMAT_STRING ; 
 int MP_CMD_DEF_MAX_ARGS ; 
 int /*<<< orphan*/  FUNC0 (struct mp_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_log*,struct mp_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_log*,char*,int /*<<< orphan*/ ,...) ; 
 TYPE_5__* FUNC5 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_log*,struct mp_cmd*,int,TYPE_5__*) ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 

__attribute__((used)) static bool FUNC8(struct mp_log *log, struct mp_cmd *cmd, mpv_node *node)
{
    FUNC1(node->format == MPV_FORMAT_NODE_MAP);
    mpv_node_list *args = node->u.list;

    mpv_node *name = FUNC5(node, "name");
    if (!name || name->format != MPV_FORMAT_STRING)
        return false;

    if (!FUNC3(log, cmd, FUNC2(name->u.string)))
        return false;

    if (cmd->def->vararg) {
        FUNC4(log, "Command %s: this command uses a variable number of "
               "arguments, which does not work with named arguments.\n",
               cmd->name);
        return false;
    }

    for (int n = 0; n < args->num; n++) {
        const char *key = args->keys[n];
        mpv_node *val = &args->values[n];

        if (FUNC7(key, "name") == 0) {
            // already handled above
        } else if (FUNC7(key, "_flags") == 0) {
            if (val->format != MPV_FORMAT_NODE_ARRAY)
                return false;
            mpv_node_list *flags = val->u.list;
            for (int i = 0; i < flags->num; i++) {
                if (flags->values[i].format != MPV_FORMAT_STRING)
                    return false;
                if (!FUNC0(cmd, FUNC2(flags->values[i].u.string)))
                    return false;
            }
        } else {
            int arg = -1;

            for (int i = 0; i < MP_CMD_DEF_MAX_ARGS; i++) {
                const char *arg_name = cmd->def->args[i].name;
                if (arg_name && arg_name[0] && FUNC7(key, arg_name) == 0) {
                    arg = i;
                    break;
                }
            }

            if (arg < 0) {
                FUNC4(log, "Command %s: no argument %s.\n", cmd->name, key);
                return false;
            }

            if (!FUNC6(log, cmd, arg, val))
                return false;
        }
    }

    return true;
}