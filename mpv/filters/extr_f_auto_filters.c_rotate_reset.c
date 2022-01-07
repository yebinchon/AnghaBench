
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rotate_priv {int sub; } ;
struct mp_filter {struct rotate_priv* priv; } ;


 int mp_subfilter_reset (int *) ;

__attribute__((used)) static void rotate_reset(struct mp_filter *f)
{
    struct rotate_priv *p = f->priv;

    mp_subfilter_reset(&p->sub);
}
