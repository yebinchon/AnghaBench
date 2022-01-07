
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {TYPE_1__* opts; } ;
struct mp_filter_command {scalar_t__ type; int speed; } ;
struct mp_filter {struct priv* priv; } ;
struct TYPE_2__ {int speed_opt; } ;


 scalar_t__ MP_FILTER_COMMAND_SET_SPEED ;
 int SCALE_PITCH ;
 int SCALE_TEMPO ;
 int update_speed (struct priv*,int ) ;

__attribute__((used)) static bool command(struct mp_filter *f, struct mp_filter_command *cmd)
{
    struct priv *s = f->priv;

    if (cmd->type == MP_FILTER_COMMAND_SET_SPEED) {
        if (s->opts->speed_opt & SCALE_TEMPO) {
            if (s->opts->speed_opt & SCALE_PITCH)
                return 0;
            update_speed(s, cmd->speed);
            return 1;
        } else if (s->opts->speed_opt & SCALE_PITCH) {
            update_speed(s, cmd->speed);
            return 0;
        }
    }

    return 0;
}
