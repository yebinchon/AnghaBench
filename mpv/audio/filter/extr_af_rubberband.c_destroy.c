
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int pending; scalar_t__ rubber; } ;
struct mp_filter {struct priv* priv; } ;


 int rubberband_delete (scalar_t__) ;
 int talloc_free (int ) ;

__attribute__((used)) static void destroy(struct mp_filter *f)
{
    struct priv *p = f->priv;

    if (p->rubber)
        rubberband_delete(p->rubber);
    talloc_free(p->pending);
}
