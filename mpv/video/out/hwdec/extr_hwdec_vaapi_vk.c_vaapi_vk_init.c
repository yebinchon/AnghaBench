
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_hwdec {int ra; struct priv_owner* priv; } ;
struct priv_owner {int interop_unmap; int interop_map; } ;
struct TYPE_2__ {int tex; } ;
struct pl_gpu {TYPE_1__ import_caps; } ;


 int MP_VERBOSE (struct ra_hwdec const*,char*) ;
 int PL_HANDLE_DMA_BUF ;
 struct pl_gpu* ra_pl_get (int ) ;
 int vaapi_vk_map ;
 int vaapi_vk_unmap ;

bool vaapi_vk_init(const struct ra_hwdec *hw)
{
   struct priv_owner *p = hw->priv;

    const struct pl_gpu *gpu = ra_pl_get(hw->ra);
    if (!gpu) {

        return 0;
    }

    if (!(gpu->import_caps.tex & PL_HANDLE_DMA_BUF)) {
        MP_VERBOSE(hw, "VAAPI Vulkan interop requires support for "
                        "dma_buf import in Vulkan.\n");
        return 0;
    }

    MP_VERBOSE(hw, "using VAAPI Vulkan interop\n");

    p->interop_map = vaapi_vk_map;
    p->interop_unmap = vaapi_vk_unmap;

    return 1;
}
