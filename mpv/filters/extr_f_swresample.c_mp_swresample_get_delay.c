
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {int dummy; } ;
struct mp_swresample {TYPE_1__* f; } ;
struct TYPE_2__ {struct priv* priv; } ;


 double get_delay (struct priv*) ;

double mp_swresample_get_delay(struct mp_swresample *s)
{
    struct priv *p = s->f->priv;

    return get_delay(p);
}
