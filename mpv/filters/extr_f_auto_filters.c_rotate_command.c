
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filter; } ;
struct rotate_priv {TYPE_1__ sub; } ;
struct mp_filter_command {scalar_t__ type; int is_active; } ;
struct mp_filter {struct rotate_priv* priv; } ;


 scalar_t__ MP_FILTER_COMMAND_IS_ACTIVE ;

__attribute__((used)) static bool rotate_command(struct mp_filter *f, struct mp_filter_command *cmd)
{
    struct rotate_priv *p = f->priv;

    if (cmd->type == MP_FILTER_COMMAND_IS_ACTIVE) {
        cmd->is_active = !!p->sub.filter;
        return 1;
    }
    return 0;
}
