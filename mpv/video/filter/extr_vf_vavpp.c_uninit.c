
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int num_buffers; scalar_t__ context; scalar_t__ config; int av_device_ref; int queue; int hw_pool; int display; int * buffers; } ;
struct mp_filter {struct priv* priv; } ;


 scalar_t__ VA_INVALID_ID ;
 int av_buffer_unref (int *) ;
 int flush_frames (struct mp_filter*) ;
 int talloc_free (int ) ;
 int vaDestroyBuffer (int ,int ) ;
 int vaDestroyConfig (int ,scalar_t__) ;
 int vaDestroyContext (int ,scalar_t__) ;

__attribute__((used)) static void uninit(struct mp_filter *vf)
{
    struct priv *p = vf->priv;
    for (int i = 0; i < p->num_buffers; i++)
        vaDestroyBuffer(p->display, p->buffers[i]);
    if (p->context != VA_INVALID_ID)
        vaDestroyContext(p->display, p->context);
    if (p->config != VA_INVALID_ID)
        vaDestroyConfig(p->display, p->config);
    av_buffer_unref(&p->hw_pool);
    flush_frames(vf);
    talloc_free(p->queue);
    av_buffer_unref(&p->av_device_ref);
}
