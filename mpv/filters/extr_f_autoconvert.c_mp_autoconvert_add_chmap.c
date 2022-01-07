
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {int force_update; int chmaps; } ;
struct mp_chmap {int dummy; } ;
struct mp_autoconvert {TYPE_1__* f; } ;
struct TYPE_2__ {struct priv* priv; } ;


 int mp_chmap_sel_add_map (int *,struct mp_chmap*) ;

void mp_autoconvert_add_chmap(struct mp_autoconvert *c, struct mp_chmap *chmap)
{
    struct priv *p = c->f->priv;

    mp_chmap_sel_add_map(&p->chmaps, chmap);
    p->force_update = 1;
}
