
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {int activated; TYPE_1__* opts; int client; } ;
struct ao {struct priv* priv; } ;
struct TYPE_2__ {scalar_t__ connect; } ;


 int MP_FATAL (struct ao*,char*) ;
 int connect_to_outports (struct ao*) ;
 scalar_t__ jack_activate (int ) ;

__attribute__((used)) static void resume(struct ao *ao)
{
    struct priv *p = ao->priv;
    if (!p->activated) {
        p->activated = 1;

        if (jack_activate(p->client))
            MP_FATAL(ao, "activate failed\n");

        if (p->opts->connect)
            connect_to_outports(ao);
    }
}
