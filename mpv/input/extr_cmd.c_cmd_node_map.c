
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct mp_cmd {int name; TYPE_3__* def; } ;
struct TYPE_13__ {int num; char** keys; TYPE_5__* values; } ;
typedef TYPE_4__ mpv_node_list ;
struct TYPE_10__ {int string; TYPE_4__* list; } ;
struct TYPE_14__ {scalar_t__ format; TYPE_1__ u; } ;
typedef TYPE_5__ mpv_node ;
struct TYPE_12__ {TYPE_2__* args; scalar_t__ vararg; } ;
struct TYPE_11__ {char* name; } ;


 scalar_t__ MPV_FORMAT_NODE_ARRAY ;
 scalar_t__ MPV_FORMAT_NODE_MAP ;
 scalar_t__ MPV_FORMAT_STRING ;
 int MP_CMD_DEF_MAX_ARGS ;
 int apply_flag (struct mp_cmd*,int ) ;
 int assert (int) ;
 int bstr0 (int ) ;
 int find_cmd (struct mp_log*,struct mp_cmd*,int ) ;
 int mp_err (struct mp_log*,char*,int ,...) ;
 TYPE_5__* node_map_get (TYPE_5__*,char*) ;
 int set_node_arg (struct mp_log*,struct mp_cmd*,int,TYPE_5__*) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static bool cmd_node_map(struct mp_log *log, struct mp_cmd *cmd, mpv_node *node)
{
    assert(node->format == MPV_FORMAT_NODE_MAP);
    mpv_node_list *args = node->u.list;

    mpv_node *name = node_map_get(node, "name");
    if (!name || name->format != MPV_FORMAT_STRING)
        return 0;

    if (!find_cmd(log, cmd, bstr0(name->u.string)))
        return 0;

    if (cmd->def->vararg) {
        mp_err(log, "Command %s: this command uses a variable number of "
               "arguments, which does not work with named arguments.\n",
               cmd->name);
        return 0;
    }

    for (int n = 0; n < args->num; n++) {
        const char *key = args->keys[n];
        mpv_node *val = &args->values[n];

        if (strcmp(key, "name") == 0) {

        } else if (strcmp(key, "_flags") == 0) {
            if (val->format != MPV_FORMAT_NODE_ARRAY)
                return 0;
            mpv_node_list *flags = val->u.list;
            for (int i = 0; i < flags->num; i++) {
                if (flags->values[i].format != MPV_FORMAT_STRING)
                    return 0;
                if (!apply_flag(cmd, bstr0(flags->values[i].u.string)))
                    return 0;
            }
        } else {
            int arg = -1;

            for (int i = 0; i < MP_CMD_DEF_MAX_ARGS; i++) {
                const char *arg_name = cmd->def->args[i].name;
                if (arg_name && arg_name[0] && strcmp(key, arg_name) == 0) {
                    arg = i;
                    break;
                }
            }

            if (arg < 0) {
                mp_err(log, "Command %s: no argument %s.\n", cmd->name, key);
                return 0;
            }

            if (!set_node_arg(log, cmd, arg, val))
                return 0;
        }
    }

    return 1;
}
