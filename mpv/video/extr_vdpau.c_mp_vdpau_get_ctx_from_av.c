
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mp_vdpau_ctx {int dummy; } ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__ free; struct mp_vdpau_ctx* user_opaque; } ;
typedef TYPE_1__ AVHWDeviceContext ;
typedef TYPE_2__ AVBufferRef ;


 scalar_t__ free_device_ref ;

struct mp_vdpau_ctx *mp_vdpau_get_ctx_from_av(AVBufferRef *hw_device_ctx)
{
    AVHWDeviceContext *hwctx = (void *)hw_device_ctx->data;

    if (hwctx->free != free_device_ref)
        return ((void*)0);

    return hwctx->user_opaque;
}
