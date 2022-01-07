
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int lavc_actx; } ;
struct mp_filter {struct priv* priv; } ;


 int avcodec_free_context (int *) ;
 int reset (struct mp_filter*) ;

__attribute__((used)) static void destroy(struct mp_filter *f)
{
    struct priv *s = f->priv;

    reset(f);
    avcodec_free_context(&s->lavc_actx);
}
