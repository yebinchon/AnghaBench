
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filter; } ;
struct priv {TYPE_1__ sub; } ;
struct mp_filter {struct priv* priv; } ;


 int TA_FREEP (int *) ;
 int mp_subfilter_reset (TYPE_1__*) ;

__attribute__((used)) static void destroy(struct mp_filter *f)
{
    struct priv *p = f->priv;

    mp_subfilter_reset(&p->sub);
    TA_FREEP(&p->sub.filter);
}
