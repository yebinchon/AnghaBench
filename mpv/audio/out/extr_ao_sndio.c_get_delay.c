
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rate; } ;
struct priv {double delay; TYPE_1__ par; } ;
struct ao {struct priv* priv; } ;


 int update (struct ao*) ;

__attribute__((used)) static double get_delay(struct ao *ao)
{
    struct priv *p = ao->priv;

    update(ao);

    return p->delay / (double)p->par.rate;
}
