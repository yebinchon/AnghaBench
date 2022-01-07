
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_filter {struct fixed_aframe_size_priv* priv; } ;
struct fixed_aframe_size_priv {scalar_t__ out_written; int out; int in; } ;


 int TA_FREEP (int *) ;

__attribute__((used)) static void fixed_aframe_size_reset(struct mp_filter *f)
{
    struct fixed_aframe_size_priv *p = f->priv;

    TA_FREEP(&p->in);
    TA_FREEP(&p->out);
    p->out_written = 0;
}
