
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int av_device_ctx; int hw_pool; } ;
struct mp_filter {struct priv* priv; } ;


 int av_buffer_unref (int *) ;

__attribute__((used)) static void destroy(struct mp_filter *f)
{
    struct priv *p = f->priv;

    av_buffer_unref(&p->hw_pool);
    av_buffer_unref(&p->av_device_ctx);
}
