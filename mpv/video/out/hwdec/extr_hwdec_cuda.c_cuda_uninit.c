
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ra_hwdec {int devs; struct cuda_hw_priv* priv; } ;
struct TYPE_5__ {int av_device_ref; } ;
struct cuda_hw_priv {scalar_t__ decode_ctx; scalar_t__ display_ctx; TYPE_1__* cu; TYPE_2__ hwctx; } ;
struct TYPE_4__ {int (* cuCtxDestroy ) (scalar_t__) ;} ;
typedef TYPE_1__ CudaFunctions ;


 int CHECK_CU (int ) ;
 int av_buffer_unref (int *) ;
 int cuda_free_functions (TYPE_1__**) ;
 int hwdec_devices_remove (int ,TYPE_2__*) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__) ;

__attribute__((used)) static void cuda_uninit(struct ra_hwdec *hw)
{
    struct cuda_hw_priv *p = hw->priv;
    CudaFunctions *cu = p->cu;

    hwdec_devices_remove(hw->devs, &p->hwctx);
    av_buffer_unref(&p->hwctx.av_device_ref);

    if (p->decode_ctx && p->decode_ctx != p->display_ctx)
        CHECK_CU(cu->cuCtxDestroy(p->decode_ctx));

    if (p->display_ctx)
        CHECK_CU(cu->cuCtxDestroy(p->display_ctx));

    cuda_free_functions(&p->cu);
}
