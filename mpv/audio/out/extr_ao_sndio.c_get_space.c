
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bufsz; int round; } ;
struct priv {int delay; TYPE_1__ par; } ;
struct ao {struct priv* priv; } ;


 int update (struct ao*) ;

__attribute__((used)) static int get_space(struct ao *ao)
{
    struct priv *p = ao->priv;

    update(ao);

    int samples = p->par.bufsz - p->delay;
    return samples / p->par.round * p->par.round;
}
