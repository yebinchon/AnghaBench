
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {int vt_switcher; scalar_t__ vt_switcher_active; } ;


 int vt_switcher_interrupt_poll (int *) ;

__attribute__((used)) static void wakeup(struct vo *vo)
{
    struct priv *p = vo->priv;
    if (p->vt_switcher_active)
        vt_switcher_interrupt_poll(&p->vt_switcher);
}
