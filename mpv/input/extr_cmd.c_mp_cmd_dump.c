
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct mp_cmd {int nargs; TYPE_1__* args; int flags; int name; } ;
struct TYPE_2__ {int v; int type; } ;


 char* m_option_print (int ,int *) ;
 int mp_msg (struct mp_log*,int,char*,...) ;
 int mp_msg_test (struct mp_log*,int) ;
 int talloc_free (char*) ;

void mp_cmd_dump(struct mp_log *log, int msgl, char *header, struct mp_cmd *cmd)
{
    if (!mp_msg_test(log, msgl))
        return;
    if (header)
        mp_msg(log, msgl, "%s ", header);
    if (!cmd) {
        mp_msg(log, msgl, "(NULL)\n");
        return;
    }
    mp_msg(log, msgl, "%s, flags=%d, args=[", cmd->name, cmd->flags);
    for (int n = 0; n < cmd->nargs; n++) {
        char *s = m_option_print(cmd->args[n].type, &cmd->args[n].v);
        if (n)
            mp_msg(log, msgl, ", ");
        mp_msg(log, msgl, "%s", s ? s : "(NULL)");
        talloc_free(s);
    }
    mp_msg(log, msgl, "]\n");
}
