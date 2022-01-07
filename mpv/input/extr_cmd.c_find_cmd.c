
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct mp_cmd {char* name; TYPE_2__* def; } ;
typedef int nname ;
struct TYPE_5__ {scalar_t__ len; } ;
typedef TYPE_1__ bstr ;
struct TYPE_6__ {scalar_t__ name; } ;


 char* BSTR_P (TYPE_1__) ;
 TYPE_2__* mp_cmds ;
 int mp_err (struct mp_log*,char*,...) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strcmp (char*,scalar_t__) ;

__attribute__((used)) static bool find_cmd(struct mp_log *log, struct mp_cmd *cmd, bstr name)
{
    if (name.len == 0) {
        mp_err(log, "Command name missing.\n");
        return 0;
    }

    char nname[80];
    snprintf(nname, sizeof(nname), "%.*s", BSTR_P(name));
    for (int n = 0; nname[n]; n++) {
        if (nname[n] == '_')
            nname[n] = '-';
    }

    for (int n = 0; mp_cmds[n].name; n++) {
        if (strcmp(nname, mp_cmds[n].name) == 0) {
            cmd->def = &mp_cmds[n];
            cmd->name = (char *)cmd->def->name;
            return 1;
        }
    }
    mp_err(log, "Command '%.*s' not found.\n", BSTR_P(name));
    return 0;
}
