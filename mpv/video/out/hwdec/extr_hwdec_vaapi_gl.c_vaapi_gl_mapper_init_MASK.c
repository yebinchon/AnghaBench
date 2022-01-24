#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vaapi_gl_mapper_priv {int /*<<< orphan*/ * gl_textures; void* EGLImageTargetTexture2DOES; void* DestroyImageKHR; void* CreateImageKHR; } ;
struct ra_tex_params {int dimensions; int d; int render_src; int src_linear; TYPE_1__* format; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct ra_imgfmt_desc {int num_planes; TYPE_1__** planes; } ;
struct ra_hwdec_mapper {int /*<<< orphan*/  ra; struct priv* priv; } ;
struct priv {int /*<<< orphan*/ * tex; int /*<<< orphan*/  layout; struct vaapi_gl_mapper_priv* interop_mapper_priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* BindTexture ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* TexParameteri ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* GenTextures ) (int,int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {scalar_t__ ctype; } ;
typedef  TYPE_2__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  GL_CLAMP_TO_EDGE ; 
 int /*<<< orphan*/  GL_LINEAR ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_MAG_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_MIN_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_WRAP_S ; 
 int /*<<< orphan*/  GL_TEXTURE_WRAP_T ; 
 scalar_t__ RA_CTYPE_UNORM ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct vaapi_gl_mapper_priv* p ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ra_tex_params*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vaapi_gl_mapper_priv* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC13(struct ra_hwdec_mapper *mapper,
                                 const struct ra_imgfmt_desc *desc)
{
    struct priv *p_mapper = mapper->priv;
    struct vaapi_gl_mapper_priv *p = FUNC12(NULL, p);
    p_mapper->interop_mapper_priv = p;

    // EGL_KHR_image_base
    p->CreateImageKHR = (void *)FUNC0("eglCreateImageKHR");
    p->DestroyImageKHR = (void *)FUNC0("eglDestroyImageKHR");
    // GL_OES_EGL_image
    p->EGLImageTargetTexture2DOES =
        (void *)FUNC0("glEGLImageTargetTexture2DOES");

    if (!p->CreateImageKHR || !p->DestroyImageKHR ||
        !p->EGLImageTargetTexture2DOES)
        return false;

    GL *gl = FUNC4(mapper->ra);
    gl->GenTextures(4, p->gl_textures);
    for (int n = 0; n < desc->num_planes; n++) {
        gl->BindTexture(GL_TEXTURE_2D, p->gl_textures[n]);
        gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
        gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
        gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
        gl->BindTexture(GL_TEXTURE_2D, 0);

        struct ra_tex_params params = {
            .dimensions = 2,
            .w = FUNC2(&p_mapper->layout, n),
            .h = FUNC1(&p_mapper->layout, n),
            .d = 1,
            .format = desc->planes[n],
            .render_src = true,
            .src_linear = true,
        };

        if (params.format->ctype != RA_CTYPE_UNORM)
            return false;

        p_mapper->tex[n] = FUNC3(mapper->ra, &params,
                                                 p->gl_textures[n]);
        if (!p_mapper->tex[n])
            return false;
    }

    return true;
}