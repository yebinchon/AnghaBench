
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_vdpau_ctx {int * av_device_ref; } ;
typedef int AVBufferRef ;


 int av_buffer_unref (int **) ;

void mp_vdpau_destroy(struct mp_vdpau_ctx *ctx)
{
    if (!ctx)
        return;

    AVBufferRef *ref = ctx->av_device_ref;
    av_buffer_unref(&ref);
}
