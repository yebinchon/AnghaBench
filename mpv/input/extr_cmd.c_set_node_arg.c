
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct mp_cmd_arg {int member_0; int v; struct m_option const* type; } ;
struct mp_cmd {int nargs; struct mp_cmd_arg* args; int name; int def; } ;
struct m_option {int dummy; } ;
struct TYPE_5__ {int string; } ;
struct TYPE_6__ {scalar_t__ format; TYPE_1__ u; } ;
typedef TYPE_2__ mpv_node ;


 scalar_t__ MPV_FORMAT_STRING ;
 int MP_TARRAY_APPEND (struct mp_cmd*,struct mp_cmd_arg*,int,struct mp_cmd_arg) ;
 int bstr0 (int ) ;
 char* get_arg_name (int ,int) ;
 struct m_option* get_arg_type (int ,int) ;
 int m_option_parse (struct mp_log*,struct m_option const*,int ,int ,void*) ;
 int m_option_set_node (struct m_option const*,void*,TYPE_2__*) ;
 int m_option_strerror (int) ;
 int mp_err (struct mp_log*,char*,int ,...) ;

__attribute__((used)) static bool set_node_arg(struct mp_log *log, struct mp_cmd *cmd, int i,
                         mpv_node *val)
{
    const char *name = get_arg_name(cmd->def, i);

    const struct m_option *opt = get_arg_type(cmd->def, i);
    if (!opt) {
        mp_err(log, "Command %s: has only %d arguments.\n", cmd->name, i);
        return 0;
    }

    if (i < cmd->nargs && cmd->args[i].type) {
        mp_err(log, "Command %s: argument %s was already set.\n", cmd->name, name);
        return 0;
    }

    struct mp_cmd_arg arg = {.type = opt};
    void *dst = &arg.v;
    if (val->format == MPV_FORMAT_STRING) {
        int r = m_option_parse(log, opt, bstr0(cmd->name),
                                bstr0(val->u.string), dst);
        if (r < 0) {
            mp_err(log, "Command %s: argument %s can't be parsed: %s.\n",
                   cmd->name, name, m_option_strerror(r));
            return 0;
        }
    } else {
        int r = m_option_set_node(opt, dst, val);
        if (r < 0) {
            mp_err(log, "Command %s: argument %s has incompatible type.\n",
                   cmd->name, name);
            return 0;
        }
    }


    while (i >= cmd->nargs) {
        struct mp_cmd_arg t = {0};
        MP_TARRAY_APPEND(cmd, cmd->args, cmd->nargs, t);
    }

    cmd->args[i] = arg;
    return 1;
}
