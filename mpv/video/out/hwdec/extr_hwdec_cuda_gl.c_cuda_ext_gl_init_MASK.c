#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ra_tex_params {int dimensions; int d; int render_src; int /*<<< orphan*/  src_linear; struct ra_format const* format; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct ra_hwdec_mapper {int /*<<< orphan*/ * tex; int /*<<< orphan*/  ra; struct cuda_mapper_priv* priv; TYPE_1__* owner; } ;
struct ra_format {int /*<<< orphan*/  linear_filter; } ;
struct ext_gl {int /*<<< orphan*/  cu_res; } ;
struct cuda_mapper_priv {int /*<<< orphan*/ * cu_array; int /*<<< orphan*/  layout; struct ext_gl** ext; } ;
struct cuda_hw_priv {TYPE_2__* cu; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* cuCtxPopCurrent ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* cuGraphicsUnmapResources ) (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* cuGraphicsSubResourceGetMappedArray ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* cuGraphicsMapResources ) (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* cuGraphicsGLRegisterImage ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {struct cuda_hw_priv* priv; } ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  TYPE_2__ CudaFunctions ;
typedef  int /*<<< orphan*/  CUcontext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CU_GRAPHICS_REGISTER_FLAGS_WRITE_DISCARD ; 
 struct ext_gl* egl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ra_tex_params*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct ext_gl* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC11(struct ra_hwdec_mapper *mapper,
                             const struct ra_format *format, int n)
{
    struct cuda_hw_priv *p_owner = mapper->owner->priv;
    struct cuda_mapper_priv *p = mapper->priv;
    CudaFunctions *cu = p_owner->cu;
    int ret = 0;
    CUcontext dummy;

    struct ext_gl *egl = FUNC10(NULL, egl);
    p->ext[n] = egl;

    struct ra_tex_params params = {
        .dimensions = 2,
        .w = FUNC2(&p->layout, n),
        .h = FUNC1(&p->layout, n),
        .d = 1,
        .format = format,
        .render_src = true,
        .src_linear = format->linear_filter,
    };

    mapper->tex[n] = FUNC4(mapper->ra, &params);
    if (!mapper->tex[n]) {
        goto error;
    }

    GLuint texture;
    GLenum target;
    FUNC3(mapper->ra, mapper->tex[n], &texture, &target);

    ret = FUNC0(cu->cuGraphicsGLRegisterImage(&egl->cu_res, texture, target,
                                                 CU_GRAPHICS_REGISTER_FLAGS_WRITE_DISCARD));
    if (ret < 0)
        goto error;

    ret = FUNC0(cu->cuGraphicsMapResources(1, &egl->cu_res, 0));
    if (ret < 0)
        goto error;

    ret = FUNC0(cu->cuGraphicsSubResourceGetMappedArray(&p->cu_array[n], egl->cu_res,
                                                           0, 0));
    if (ret < 0)
        goto error;

    ret = FUNC0(cu->cuGraphicsUnmapResources(1, &egl->cu_res, 0));
    if (ret < 0)
        goto error;

    return true;

error:
    FUNC0(cu->cuCtxPopCurrent(&dummy));
    return false;
}