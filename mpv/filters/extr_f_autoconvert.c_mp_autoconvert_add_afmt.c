
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {int force_update; int num_afmts; int afmts; } ;
struct mp_autoconvert {TYPE_1__* f; } ;
struct TYPE_2__ {struct priv* priv; } ;


 int MP_TARRAY_APPEND (struct priv*,int ,int ,int) ;

void mp_autoconvert_add_afmt(struct mp_autoconvert *c, int afmt)
{
    struct priv *p = c->f->priv;

    MP_TARRAY_APPEND(p, p->afmts, p->num_afmts, afmt);
    p->force_update = 1;
}
