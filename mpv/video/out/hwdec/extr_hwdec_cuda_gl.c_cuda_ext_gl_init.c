
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ra_tex_params {int dimensions; int d; int render_src; int src_linear; struct ra_format const* format; int h; int w; } ;
struct ra_hwdec_mapper {int * tex; int ra; struct cuda_mapper_priv* priv; TYPE_1__* owner; } ;
struct ra_format {int linear_filter; } ;
struct ext_gl {int cu_res; } ;
struct cuda_mapper_priv {int * cu_array; int layout; struct ext_gl** ext; } ;
struct cuda_hw_priv {TYPE_2__* cu; } ;
struct TYPE_4__ {int (* cuCtxPopCurrent ) (int *) ;int (* cuGraphicsUnmapResources ) (int,int *,int ) ;int (* cuGraphicsSubResourceGetMappedArray ) (int *,int ,int ,int ) ;int (* cuGraphicsMapResources ) (int,int *,int ) ;int (* cuGraphicsGLRegisterImage ) (int *,int ,int ,int ) ;} ;
struct TYPE_3__ {struct cuda_hw_priv* priv; } ;
typedef int GLuint ;
typedef int GLenum ;
typedef TYPE_2__ CudaFunctions ;
typedef int CUcontext ;


 int CHECK_CU (int ) ;
 int CU_GRAPHICS_REGISTER_FLAGS_WRITE_DISCARD ;
 struct ext_gl* egl ;
 int mp_image_plane_h (int *,int) ;
 int mp_image_plane_w (int *,int) ;
 int ra_gl_get_raw_tex (int ,int ,int *,int *) ;
 int ra_tex_create (int ,struct ra_tex_params*) ;
 int stub1 (int *,int ,int ,int ) ;
 int stub2 (int,int *,int ) ;
 int stub3 (int *,int ,int ,int ) ;
 int stub4 (int,int *,int ) ;
 int stub5 (int *) ;
 struct ext_gl* talloc_ptrtype (int *,int ) ;

__attribute__((used)) static bool cuda_ext_gl_init(struct ra_hwdec_mapper *mapper,
                             const struct ra_format *format, int n)
{
    struct cuda_hw_priv *p_owner = mapper->owner->priv;
    struct cuda_mapper_priv *p = mapper->priv;
    CudaFunctions *cu = p_owner->cu;
    int ret = 0;
    CUcontext dummy;

    struct ext_gl *egl = talloc_ptrtype(((void*)0), egl);
    p->ext[n] = egl;

    struct ra_tex_params params = {
        .dimensions = 2,
        .w = mp_image_plane_w(&p->layout, n),
        .h = mp_image_plane_h(&p->layout, n),
        .d = 1,
        .format = format,
        .render_src = 1,
        .src_linear = format->linear_filter,
    };

    mapper->tex[n] = ra_tex_create(mapper->ra, &params);
    if (!mapper->tex[n]) {
        goto error;
    }

    GLuint texture;
    GLenum target;
    ra_gl_get_raw_tex(mapper->ra, mapper->tex[n], &texture, &target);

    ret = CHECK_CU(cu->cuGraphicsGLRegisterImage(&egl->cu_res, texture, target,
                                                 CU_GRAPHICS_REGISTER_FLAGS_WRITE_DISCARD));
    if (ret < 0)
        goto error;

    ret = CHECK_CU(cu->cuGraphicsMapResources(1, &egl->cu_res, 0));
    if (ret < 0)
        goto error;

    ret = CHECK_CU(cu->cuGraphicsSubResourceGetMappedArray(&p->cu_array[n], egl->cu_res,
                                                           0, 0));
    if (ret < 0)
        goto error;

    ret = CHECK_CU(cu->cuGraphicsUnmapResources(1, &egl->cu_res, 0));
    if (ret < 0)
        goto error;

    return 1;

error:
    CHECK_CU(cu->cuCtxPopCurrent(&dummy));
    return 0;
}
