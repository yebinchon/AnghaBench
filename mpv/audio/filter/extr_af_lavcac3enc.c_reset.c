
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int in_frame; } ;
struct mp_filter {struct priv* priv; } ;


 int TA_FREEP (int *) ;

__attribute__((used)) static void reset(struct mp_filter *f)
{
    struct priv *s = f->priv;

    TA_FREEP(&s->in_frame);
}
