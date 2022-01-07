
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ra_hwdec {int ra; struct cuda_hw_priv* priv; } ;
struct TYPE_5__ {int tex; int sync; } ;
struct pl_gpu {int uuid; TYPE_1__ export_caps; } ;
struct cuda_hw_priv {int handle_type; int ext_signal; int ext_wait; int ext_uninit; int ext_init; int display_ctx; int decode_ctx; TYPE_2__* cu; } ;
struct TYPE_7__ {int bytes; } ;
struct TYPE_6__ {int (* cuCtxCreate ) (int *,int ,int) ;int (* cuDeviceGetUuid ) (TYPE_3__*,int) ;int (* cuDeviceGet ) (int*,int) ;int (* cuDeviceGetCount ) (int*) ;int cuImportExternalMemory; } ;
typedef TYPE_2__ CudaFunctions ;
typedef TYPE_3__ CUuuid ;
typedef int CUdevice ;


 int CHECK_CU (int ) ;
 int CU_CTX_SCHED_BLOCKING_SYNC ;
 scalar_t__ IsWindows8OrGreater () ;
 int MP_ERR (struct ra_hwdec const*,char*) ;
 int MP_VERBOSE (struct ra_hwdec const*,char*,int) ;
 int PL_HANDLE_FD ;
 int PL_HANDLE_WIN32 ;
 int PL_HANDLE_WIN32_KMT ;
 int cuda_ext_vk_init ;
 int cuda_ext_vk_signal ;
 int cuda_ext_vk_uninit ;
 int cuda_ext_vk_wait ;
 scalar_t__ memcmp (int ,int ,int) ;
 struct pl_gpu* ra_pl_get (int ) ;
 int stub1 (int*) ;
 int stub2 (int*,int) ;
 int stub3 (TYPE_3__*,int) ;
 int stub4 (int *,int ,int) ;

bool cuda_vk_init(const struct ra_hwdec *hw) {
    int ret = 0;
    struct cuda_hw_priv *p = hw->priv;
    CudaFunctions *cu = p->cu;

    p->handle_type =



        PL_HANDLE_FD;


    const struct pl_gpu *gpu = ra_pl_get(hw->ra);
    if (gpu != ((void*)0)) {
        if (!(gpu->export_caps.tex & p->handle_type)) {
            MP_VERBOSE(hw, "CUDA hwdec with Vulkan requires exportable texture memory of type 0x%X.\n",
                       p->handle_type);
            return 0;
        } else if (!(gpu->export_caps.sync & p->handle_type)) {
            MP_VERBOSE(hw, "CUDA hwdec with Vulkan requires exportable semaphores of type 0x%X.\n",
                       p->handle_type);
            return 0;
        }
    } else {

        return 0;
    }

    if (!cu->cuImportExternalMemory) {
        MP_ERR(hw, "CUDA hwdec with Vulkan requires driver version 410.48 or newer.\n");
        return 0;
    }

    int device_count;
    ret = CHECK_CU(cu->cuDeviceGetCount(&device_count));
    if (ret < 0)
        return 0;

    CUdevice display_dev = -1;
    for (int i = 0; i < device_count; i++) {
        CUdevice dev;
        ret = CHECK_CU(cu->cuDeviceGet(&dev, i));
        if (ret < 0)
            continue;

        CUuuid uuid;
        ret = CHECK_CU(cu->cuDeviceGetUuid(&uuid, dev));
        if (ret < 0)
            continue;

        if (memcmp(gpu->uuid, uuid.bytes, sizeof (gpu->uuid)) == 0) {
            display_dev = dev;
            break;
        }
    }

    if (display_dev == -1) {
        MP_ERR(hw, "Could not match Vulkan display device in CUDA.\n");
        return 0;
    }

    ret = CHECK_CU(cu->cuCtxCreate(&p->display_ctx, CU_CTX_SCHED_BLOCKING_SYNC,
                                   display_dev));
    if (ret < 0)
        return 0;

    p->decode_ctx = p->display_ctx;

    p->ext_init = cuda_ext_vk_init;
    p->ext_uninit = cuda_ext_vk_uninit;
    p->ext_wait = cuda_ext_vk_wait;
    p->ext_signal = cuda_ext_vk_signal;

    return 1;
}
