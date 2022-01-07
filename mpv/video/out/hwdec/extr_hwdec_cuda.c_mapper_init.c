
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ra_imgfmt_desc {int num_planes; int * planes; } ;
struct TYPE_6__ {int hw_subfmt; int imgfmt; } ;
struct ra_hwdec_mapper {int ra; TYPE_3__ dst_params; TYPE_3__ src_params; struct cuda_mapper_priv* priv; TYPE_1__* owner; } ;
struct cuda_mapper_priv {int display_ctx; int layout; } ;
struct cuda_hw_priv {int (* ext_init ) (struct ra_hwdec_mapper*,int ,int) ;int display_ctx; TYPE_2__* cu; } ;
struct TYPE_5__ {int (* cuCtxPopCurrent ) (int *) ;int (* cuCtxPushCurrent ) (int ) ;} ;
struct TYPE_4__ {struct cuda_hw_priv* priv; } ;
typedef TYPE_2__ CudaFunctions ;
typedef int CUcontext ;


 int CHECK_CU (int ) ;
 int MP_ERR (struct ra_hwdec_mapper*,char*,int ) ;
 int mp_image_set_params (int *,TYPE_3__*) ;
 int mp_imgfmt_to_name (int) ;
 int ra_get_imgfmt_desc (int ,int,struct ra_imgfmt_desc*) ;
 int stub1 (int ) ;
 int stub2 (struct ra_hwdec_mapper*,int ,int) ;
 int stub3 (int *) ;

__attribute__((used)) static int mapper_init(struct ra_hwdec_mapper *mapper)
{
    struct cuda_hw_priv *p_owner = mapper->owner->priv;
    struct cuda_mapper_priv *p = mapper->priv;
    CUcontext dummy;
    CudaFunctions *cu = p_owner->cu;
    int ret = 0, eret = 0;

    p->display_ctx = p_owner->display_ctx;

    int imgfmt = mapper->src_params.hw_subfmt;
    mapper->dst_params = mapper->src_params;
    mapper->dst_params.imgfmt = imgfmt;
    mapper->dst_params.hw_subfmt = 0;

    mp_image_set_params(&p->layout, &mapper->dst_params);

    struct ra_imgfmt_desc desc;
    if (!ra_get_imgfmt_desc(mapper->ra, imgfmt, &desc)) {
        MP_ERR(mapper, "Unsupported format: %s\n", mp_imgfmt_to_name(imgfmt));
        return -1;
    }

    ret = CHECK_CU(cu->cuCtxPushCurrent(p->display_ctx));
    if (ret < 0)
        return ret;

    for (int n = 0; n < desc.num_planes; n++) {
        if (!p_owner->ext_init(mapper, desc.planes[n], n))
            goto error;
    }

 error:
    eret = CHECK_CU(cu->cuCtxPopCurrent(&dummy));
    if (eret < 0)
        return eret;

    return ret;
}
