
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int cmd_speed; } ;
struct mp_filter_command {scalar_t__ type; int speed; } ;
struct mp_filter {struct priv* priv; } ;


 scalar_t__ MP_FILTER_COMMAND_SET_SPEED_RESAMPLE ;

__attribute__((used)) static bool command(struct mp_filter *f, struct mp_filter_command *cmd)
{
    struct priv *p = f->priv;

    if (cmd->type == MP_FILTER_COMMAND_SET_SPEED_RESAMPLE) {
        p->cmd_speed = cmd->speed;
        return 1;
    }

    return 0;
}
