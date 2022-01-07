
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int format_change_cont; int format_change_blocked; int sub; } ;
struct mp_filter {struct priv* priv; } ;


 int mp_subfilter_reset (int *) ;

__attribute__((used)) static void reset(struct mp_filter *f)
{
    struct priv *p = f->priv;

    mp_subfilter_reset(&p->sub);

    p->format_change_cont = 0;
    p->format_change_blocked = 0;
}
