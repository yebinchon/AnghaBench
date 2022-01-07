
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {int format_change_blocked; int format_change_cont; } ;
struct mp_autoconvert {TYPE_1__* f; } ;
struct TYPE_2__ {struct priv* priv; } ;


 int mp_filter_wakeup (TYPE_1__*) ;

void mp_autoconvert_format_change_continue(struct mp_autoconvert *c)
{
    struct priv *p = c->f->priv;

    if (p->format_change_blocked) {
        p->format_change_cont = 1;
        p->format_change_blocked = 0;
        mp_filter_wakeup(c->f);
    }
}
