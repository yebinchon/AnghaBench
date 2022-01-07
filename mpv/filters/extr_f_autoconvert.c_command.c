
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filter; } ;
struct priv {double audio_speed; int resampling_forced; TYPE_1__ sub; } ;
struct mp_filter_command {scalar_t__ type; double speed; int is_active; } ;
struct mp_filter {struct priv* priv; } ;


 scalar_t__ MP_FILTER_COMMAND_IS_ACTIVE ;
 scalar_t__ MP_FILTER_COMMAND_SET_SPEED_RESAMPLE ;

__attribute__((used)) static bool command(struct mp_filter *f, struct mp_filter_command *cmd)
{
    struct priv *p = f->priv;

    if (cmd->type == MP_FILTER_COMMAND_SET_SPEED_RESAMPLE) {
        p->audio_speed = cmd->speed;


        if (p->audio_speed != 1.0)
            p->resampling_forced = 1;
        return 1;
    }

    if (cmd->type == MP_FILTER_COMMAND_IS_ACTIVE) {
        cmd->is_active = !!p->sub.filter;
        return 1;
    }

    return 0;
}
