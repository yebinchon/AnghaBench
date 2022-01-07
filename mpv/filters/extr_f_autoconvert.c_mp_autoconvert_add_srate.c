
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {size_t num_srates; int force_update; scalar_t__* srates; } ;
struct mp_autoconvert {TYPE_1__* f; } ;
struct TYPE_2__ {struct priv* priv; } ;


 int MP_TARRAY_APPEND (struct priv*,scalar_t__*,size_t,int) ;
 int MP_TARRAY_GROW (struct priv*,scalar_t__*,size_t) ;

void mp_autoconvert_add_srate(struct mp_autoconvert *c, int rate)
{
    struct priv *p = c->f->priv;

    MP_TARRAY_APPEND(p, p->srates, p->num_srates, rate);

    MP_TARRAY_GROW(p, p->srates, p->num_srates);
    p->srates[p->num_srates] = 0;
    p->force_update = 1;
}
