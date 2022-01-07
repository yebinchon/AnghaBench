
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_6__ {int BindFlags; } ;
struct TYPE_5__ {scalar_t__ format; scalar_t__ sw_format; TYPE_2__* hwctx; } ;
typedef TYPE_1__ AVHWFramesContext ;
typedef TYPE_2__ AVD3D11VAFramesContext ;
typedef TYPE_3__ AVBufferRef ;


 scalar_t__ AV_PIX_FMT_D3D11 ;
 scalar_t__ AV_PIX_FMT_YUV420P ;
 int D3D11_BIND_SHADER_RESOURCE ;

__attribute__((used)) static void d3d11_refine_hwframes(AVBufferRef *hw_frames_ctx)
{
    AVHWFramesContext *fctx = (void *)hw_frames_ctx->data;

    if (fctx->format == AV_PIX_FMT_D3D11) {
        AVD3D11VAFramesContext *hwctx = fctx->hwctx;



        if (fctx->sw_format != AV_PIX_FMT_YUV420P)
            hwctx->BindFlags |= D3D11_BIND_SHADER_RESOURCE;
    }
}
