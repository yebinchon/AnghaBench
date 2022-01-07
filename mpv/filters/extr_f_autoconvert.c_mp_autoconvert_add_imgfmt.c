
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {int* imgfmts; size_t num_imgfmts; int* subfmts; int force_update; } ;
struct mp_autoconvert {TYPE_1__* f; } ;
struct TYPE_2__ {struct priv* priv; } ;


 int MP_TARRAY_GROW (struct priv*,int*,size_t) ;

void mp_autoconvert_add_imgfmt(struct mp_autoconvert *c, int imgfmt, int subfmt)
{
    struct priv *p = c->f->priv;

    MP_TARRAY_GROW(p, p->imgfmts, p->num_imgfmts);
    MP_TARRAY_GROW(p, p->subfmts, p->num_imgfmts);

    p->imgfmts[p->num_imgfmts] = imgfmt;
    p->subfmts[p->num_imgfmts] = subfmt;

    p->num_imgfmts += 1;
    p->force_update = 1;
}
