
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int sent_final; int pending; scalar_t__ rubber_delay; scalar_t__ rubber; } ;
struct mp_filter {struct priv* priv; } ;


 int TA_FREEP (int *) ;
 int rubberband_reset (scalar_t__) ;

__attribute__((used)) static void reset(struct mp_filter *f)
{
    struct priv *p = f->priv;

    if (p->rubber)
        rubberband_reset(p->rubber);
    p->rubber_delay = 0;
    p->sent_final = 0;
    TA_FREEP(&p->pending);
}
