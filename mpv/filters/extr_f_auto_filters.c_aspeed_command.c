
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_filter_command {scalar_t__ type; int is_active; int speed; } ;
struct mp_filter {struct aspeed_priv* priv; } ;
struct TYPE_2__ {int filter; } ;
struct aspeed_priv {TYPE_1__ sub; int cur_speed; } ;


 scalar_t__ MP_FILTER_COMMAND_IS_ACTIVE ;
 scalar_t__ MP_FILTER_COMMAND_SET_SPEED ;

__attribute__((used)) static bool aspeed_command(struct mp_filter *f, struct mp_filter_command *cmd)
{
    struct aspeed_priv *p = f->priv;

    if (cmd->type == MP_FILTER_COMMAND_SET_SPEED) {
        p->cur_speed = cmd->speed;
        return 1;
    }

    if (cmd->type == MP_FILTER_COMMAND_IS_ACTIVE) {
        cmd->is_active = !!p->sub.filter;
        return 1;
    }

    return 0;
}
