
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union m_option_value {int member_0; } ;
struct mp_cmd_ctx {int num_args; int success; TYPE_2__* args; struct MPContext* mpctx; } ;
struct m_option {int member_0; } ;
struct MPContext {int log; } ;
struct TYPE_3__ {char* s; } ;
struct TYPE_4__ {TYPE_1__ v; } ;


 int MP_ERR (struct MPContext*,char*) ;
 int MP_VERBOSE (struct MPContext*,char*) ;
 int M_PROPERTY_GET ;
 int M_PROPERTY_GET_TYPE ;
 int M_PROPERTY_SET_STRING ;
 int bstr0 (char const*) ;
 int change_property_cmd (struct mp_cmd_ctx*,char const*,int ,char const*) ;
 scalar_t__ compare_values (union m_option_value*,union m_option_value*,union m_option_value*) ;
 int m_option_free (union m_option_value*,union m_option_value*) ;
 scalar_t__ m_option_parse (int ,union m_option_value*,int ,int ,union m_option_value*) ;
 int mp_property_do (char const*,int ,union m_option_value*,struct MPContext*) ;
 int show_property_status (struct mp_cmd_ctx*,char const*,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void cmd_cycle_values(void *p)
{
    struct mp_cmd_ctx *cmd = p;
    struct MPContext *mpctx = cmd->mpctx;
    int first = 0, dir = 1;

    if (strcmp(cmd->args[first].v.s, "!reverse") == 0) {
        first += 1;
        dir = -1;
    }

    const char *name = cmd->args[first].v.s;
    first += 1;

    if (first >= cmd->num_args) {
        MP_ERR(mpctx, "cycle-values command does not have any value arguments.\n");
        cmd->success = 0;
        return;
    }

    struct m_option prop = {0};
    int r = mp_property_do(name, M_PROPERTY_GET_TYPE, &prop, mpctx);
    if (r <= 0) {
        show_property_status(cmd, name, r);
        return;
    }

    union m_option_value curval = {0};
    r = mp_property_do(name, M_PROPERTY_GET, &curval, mpctx);
    if (r <= 0) {
        show_property_status(cmd, name, r);
        return;
    }




    int current = -1;
    for (int n = first; n < cmd->num_args; n++) {
        union m_option_value val = {0};
        if (m_option_parse(mpctx->log, &prop, bstr0(name),
                           bstr0(cmd->args[n].v.s), &val) < 0)
            continue;

        if (compare_values(&prop, &curval, &val))
            current = n;

        m_option_free(&prop, &val);

        if (current >= 0)
            break;
    }

    m_option_free(&prop, &curval);

    if (current >= 0) {
        current += dir;
        if (current < first)
            current = cmd->num_args - 1;
        if (current >= cmd->num_args)
            current = first;
    } else {
        MP_VERBOSE(mpctx, "Current value not found. Picking default.\n");
        current = dir > 0 ? first : cmd->num_args - 1;
    }

    change_property_cmd(cmd, name, M_PROPERTY_SET_STRING, cmd->args[current].v.s);
}
