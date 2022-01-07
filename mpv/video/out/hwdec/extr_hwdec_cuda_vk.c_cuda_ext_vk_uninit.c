
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ra_hwdec_mapper {int ra; struct cuda_mapper_priv* priv; TYPE_1__* owner; } ;
struct ext_vk {int sync; scalar_t__ ws; scalar_t__ ss; scalar_t__ mem; scalar_t__ mma; } ;
struct cuda_mapper_priv {struct ext_vk** ext; } ;
struct cuda_hw_priv {TYPE_2__* cu; } ;
struct TYPE_4__ {int (* cuDestroyExternalSemaphore ) (scalar_t__) ;int (* cuDestroyExternalMemory ) (scalar_t__) ;int (* cuMipmappedArrayDestroy ) (scalar_t__) ;} ;
struct TYPE_3__ {struct cuda_hw_priv* priv; } ;
typedef TYPE_2__ CudaFunctions ;


 int CHECK_CU (int ) ;
 int pl_sync_destroy (int ,int *) ;
 int ra_pl_get (int ) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__) ;
 int stub3 (scalar_t__) ;
 int stub4 (scalar_t__) ;
 int talloc_free (struct ext_vk*) ;

__attribute__((used)) static void cuda_ext_vk_uninit(const struct ra_hwdec_mapper *mapper, int n)
{
    struct cuda_hw_priv *p_owner = mapper->owner->priv;
    struct cuda_mapper_priv *p = mapper->priv;
    CudaFunctions *cu = p_owner->cu;

    struct ext_vk *evk = p->ext[n];
    if (evk) {
        if (evk->mma) {
            CHECK_CU(cu->cuMipmappedArrayDestroy(evk->mma));
            evk->mma = 0;
        }
        if (evk->mem) {
            CHECK_CU(cu->cuDestroyExternalMemory(evk->mem));
            evk->mem = 0;
        }
        if (evk->ss) {
            CHECK_CU(cu->cuDestroyExternalSemaphore(evk->ss));
            evk->ss = 0;
        }
        if (evk->ws) {
            CHECK_CU(cu->cuDestroyExternalSemaphore(evk->ws));
            evk->ws = 0;
        }
        pl_sync_destroy(ra_pl_get(mapper->ra), &evk->sync);
    }
    talloc_free(evk);
}
