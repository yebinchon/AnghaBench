
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ra_hwdec_mapper {struct cuda_mapper_priv* priv; TYPE_1__* owner; } ;
struct ext_gl {scalar_t__ cu_res; } ;
struct cuda_mapper_priv {struct ext_gl** ext; } ;
struct cuda_hw_priv {TYPE_2__* cu; } ;
struct TYPE_4__ {int (* cuGraphicsUnregisterResource ) (scalar_t__) ;} ;
struct TYPE_3__ {struct cuda_hw_priv* priv; } ;
typedef TYPE_2__ CudaFunctions ;


 int CHECK_CU (int ) ;
 int stub1 (scalar_t__) ;
 int talloc_free (struct ext_gl*) ;

__attribute__((used)) static void cuda_ext_gl_uninit(const struct ra_hwdec_mapper *mapper, int n)
{
    struct cuda_hw_priv *p_owner = mapper->owner->priv;
    struct cuda_mapper_priv *p = mapper->priv;
    CudaFunctions *cu = p_owner->cu;

    struct ext_gl *egl = p->ext[n];
    if (egl && egl->cu_res) {
        CHECK_CU(cu->cuGraphicsUnregisterResource(egl->cu_res));
        egl->cu_res = 0;
    }
    talloc_free(egl);
}
