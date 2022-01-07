
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filter; } ;
struct rotate_priv {TYPE_1__ sub; } ;
struct mp_filter {struct rotate_priv* priv; } ;


 int TA_FREEP (int *) ;
 int mp_subfilter_reset (TYPE_1__*) ;

__attribute__((used)) static void rotate_destroy(struct mp_filter *f)
{
    struct rotate_priv *p = f->priv;

    mp_subfilter_reset(&p->sub);
    TA_FREEP(&p->sub.filter);
}
