
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int queue; } ;
struct mp_filter {struct priv* priv; } ;


 int talloc_free (int ) ;

__attribute__((used)) static void vf_vdpaupp_destroy(struct mp_filter *f)
{
    struct priv *p = f->priv;
    talloc_free(p->queue);
}
