
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ra_hwdec_mapper {int ra; struct cuda_mapper_priv* priv; TYPE_1__* owner; } ;
struct ext_vk {int ws; int sync; int pltex; } ;
struct cuda_mapper_priv {struct ext_vk** ext; } ;
struct cuda_hw_priv {TYPE_2__* cu; } ;
struct TYPE_7__ {int member_0; } ;
struct TYPE_6__ {int (* cuWaitExternalSemaphoresAsync ) (int *,TYPE_3__*,int,int ) ;} ;
struct TYPE_5__ {struct cuda_hw_priv* priv; } ;
typedef TYPE_2__ CudaFunctions ;
typedef TYPE_3__ CUDA_EXTERNAL_SEMAPHORE_WAIT_PARAMS ;


 int CHECK_CU (int ) ;
 int pl_tex_export (int ,int ,int ) ;
 int ra_pl_get (int ) ;
 int stub1 (int *,TYPE_3__*,int,int ) ;

__attribute__((used)) static bool cuda_ext_vk_wait(const struct ra_hwdec_mapper *mapper, int n)
{
    struct cuda_hw_priv *p_owner = mapper->owner->priv;
    struct cuda_mapper_priv *p = mapper->priv;
    CudaFunctions *cu = p_owner->cu;
    int ret;
    struct ext_vk *evk = p->ext[n];

    ret = pl_tex_export(ra_pl_get(mapper->ra),
                        evk->pltex, evk->sync);
    if (!ret)
        return 0;

    CUDA_EXTERNAL_SEMAPHORE_WAIT_PARAMS wp = { 0, };
    ret = CHECK_CU(cu->cuWaitExternalSemaphoresAsync(&evk->ws,
                                                     &wp, 1, 0));
    return ret == 0;
}
