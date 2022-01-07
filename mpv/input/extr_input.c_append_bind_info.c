
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_cmd {int original; } ;
struct input_ctx {int dummy; } ;
struct cmd_bind {scalar_t__ is_builtin; int location; TYPE_1__* owner; int cmd; } ;
typedef int bstr ;
struct TYPE_2__ {int section; } ;


 int BSTR_P (int ) ;
 int bstr0 (int ) ;
 struct mp_cmd* mp_input_parse_cmd (struct input_ctx*,int ,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 char* talloc_asprintf_append (char*,char*,...) ;
 int talloc_free (struct mp_cmd*) ;

__attribute__((used)) static void append_bind_info(struct input_ctx *ictx, char **pmsg,
                             struct cmd_bind *bind)
{
    char *msg = *pmsg;
    struct mp_cmd *cmd = mp_input_parse_cmd(ictx, bstr0(bind->cmd),
                                            bind->location);
    bstr stripped = cmd ? cmd->original : bstr0(bind->cmd);
    msg = talloc_asprintf_append(msg, " '%.*s'", BSTR_P(stripped));
    if (!cmd)
        msg = talloc_asprintf_append(msg, " (invalid)");
    if (strcmp(bind->owner->section, "default") != 0)
        msg = talloc_asprintf_append(msg, " in section {%s}",
                                     bind->owner->section);
    msg = talloc_asprintf_append(msg, " in %s", bind->location);
    if (bind->is_builtin)
        msg = talloc_asprintf_append(msg, " (default)");
    talloc_free(cmd);
    *pmsg = msg;
}
