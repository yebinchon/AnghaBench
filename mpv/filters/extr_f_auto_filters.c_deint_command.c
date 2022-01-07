
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mp_filter_command {scalar_t__ type; int is_active; } ;
struct mp_filter {struct deint_priv* priv; } ;
struct TYPE_2__ {int filter; } ;
struct deint_priv {TYPE_1__ sub; } ;


 scalar_t__ MP_FILTER_COMMAND_IS_ACTIVE ;

__attribute__((used)) static bool deint_command(struct mp_filter *f, struct mp_filter_command *cmd)
{
    struct deint_priv *p = f->priv;

    if (cmd->type == MP_FILTER_COMMAND_IS_ACTIVE) {
        cmd->is_active = !!p->sub.filter;
        return 1;
    }
    return 0;
}
