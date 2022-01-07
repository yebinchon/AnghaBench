
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_filter {struct aspeed_priv* priv; } ;
struct aspeed_priv {int sub; } ;


 int mp_subfilter_reset (int *) ;

__attribute__((used)) static void aspeed_reset(struct mp_filter *f)
{
    struct aspeed_priv *p = f->priv;

    mp_subfilter_reset(&p->sub);
}
