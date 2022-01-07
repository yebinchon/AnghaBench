
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {double pitch; } ;
struct mp_filter_command {int type; int speed; int arg; int cmd; } ;
struct mp_filter {struct priv* priv; } ;




 int strcmp (int ,char*) ;
 double strtod (int ,char**) ;
 int update_pitch (struct priv*,double) ;
 int update_speed (struct priv*,int ) ;

__attribute__((used)) static bool command(struct mp_filter *f, struct mp_filter_command *cmd)
{
    struct priv *p = f->priv;

    switch (cmd->type) {
    case 128: {
        char *endptr = ((void*)0);
        double pitch = p->pitch;
        if (!strcmp(cmd->cmd, "set-pitch")) {
            pitch = strtod(cmd->arg, &endptr);
            if (*endptr)
                return 0;
            return update_pitch(p, pitch);
        } else if (!strcmp(cmd->cmd, "multiply-pitch")) {
            double mult = strtod(cmd->arg, &endptr);
            if (*endptr || mult <= 0)
                return 0;
            pitch *= mult;
            return update_pitch(p, pitch);
        }
        return 0;
    }
    case 129:
        update_speed(p, cmd->speed);
        return 1;
    }

    return 0;
}
