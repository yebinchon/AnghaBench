
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ra_hwdec_mapper {int * tex; int ra; TYPE_1__* owner; struct cuda_mapper_priv* priv; } ;
struct cuda_mapper_priv {int display_ctx; } ;
struct cuda_hw_priv {int (* ext_uninit ) (struct ra_hwdec_mapper*,int) ;TYPE_2__* cu; } ;
struct TYPE_4__ {int (* cuCtxPopCurrent ) (int *) ;int (* cuCtxPushCurrent ) (int ) ;} ;
struct TYPE_3__ {struct cuda_hw_priv* priv; } ;
typedef TYPE_2__ CudaFunctions ;
typedef int CUcontext ;


 int CHECK_CU (int ) ;
 int ra_tex_free (int ,int *) ;
 int stub1 (int ) ;
 int stub2 (struct ra_hwdec_mapper*,int) ;
 int stub3 (int *) ;

__attribute__((used)) static void mapper_uninit(struct ra_hwdec_mapper *mapper)
{
    struct cuda_mapper_priv *p = mapper->priv;
    struct cuda_hw_priv *p_owner = mapper->owner->priv;
    CudaFunctions *cu = p_owner->cu;
    CUcontext dummy;


    CHECK_CU(cu->cuCtxPushCurrent(p->display_ctx));
    for (int n = 0; n < 4; n++) {
        p_owner->ext_uninit(mapper, n);
        ra_tex_free(mapper->ra, &mapper->tex[n]);
    }
    CHECK_CU(cu->cuCtxPopCurrent(&dummy));
}
