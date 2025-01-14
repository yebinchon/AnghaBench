
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct vo {TYPE_1__* opts; } ;
struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_11__ {TYPE_2__* hwctx; } ;
struct TYPE_10__ {void* surface; } ;
struct TYPE_9__ {scalar_t__ WinID; } ;
typedef TYPE_2__ AVMediaCodecDeviceContext ;
typedef TYPE_3__ AVHWDeviceContext ;
typedef TYPE_4__ AVBufferRef ;


 int AV_HWDEVICE_TYPE_MEDIACODEC ;
 int av_buffer_unref (TYPE_4__**) ;
 TYPE_4__* av_hwdevice_ctx_alloc (int ) ;
 scalar_t__ av_hwdevice_ctx_init (TYPE_4__*) ;

__attribute__((used)) static AVBufferRef *create_mediacodec_device_ref(struct vo *vo)
{
    AVBufferRef *device_ref = av_hwdevice_ctx_alloc(AV_HWDEVICE_TYPE_MEDIACODEC);
    if (!device_ref)
        return ((void*)0);

    AVHWDeviceContext *ctx = (void *)device_ref->data;
    AVMediaCodecDeviceContext *hwctx = ctx->hwctx;
    hwctx->surface = (void *)(intptr_t)(vo->opts->WinID);

    if (av_hwdevice_ctx_init(device_ref) < 0)
        av_buffer_unref(&device_ref);

    return device_ref;
}
