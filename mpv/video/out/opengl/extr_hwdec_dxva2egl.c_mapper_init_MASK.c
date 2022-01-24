#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ra_tex_params {int dimensions; int d; int render_src; int src_linear; int /*<<< orphan*/  format; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct TYPE_6__ {scalar_t__ hw_subfmt; int /*<<< orphan*/  imgfmt; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct ra_hwdec_mapper {TYPE_2__ dst_params; TYPE_2__ src_params; int /*<<< orphan*/ * tex; int /*<<< orphan*/  ra; struct priv* priv; TYPE_1__* owner; } ;
struct priv_owner {scalar_t__ alpha; int /*<<< orphan*/  egl_config; int /*<<< orphan*/  egl_display; int /*<<< orphan*/  device9ex; } ;
struct priv {scalar_t__ egl_surface; int /*<<< orphan*/  gl_texture; int /*<<< orphan*/  egl_display; int /*<<< orphan*/  surface9; int /*<<< orphan*/  texture9; int /*<<< orphan*/  device9ex; int /*<<< orphan*/  query9; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* BindTexture ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* TexParameteri ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* GenTextures ) (int,int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {struct priv_owner* priv; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  TYPE_3__ GL ;
typedef  int /*<<< orphan*/  EGLint ;

/* Variables and functions */
 int /*<<< orphan*/  D3DFMT_A8R8G8B8 ; 
 int /*<<< orphan*/  D3DFMT_X8R8G8B8 ; 
 int /*<<< orphan*/  D3DISSUE_END ; 
 int /*<<< orphan*/  D3DPOOL_DEFAULT ; 
 int /*<<< orphan*/  D3DQUERYTYPE_EVENT ; 
 int /*<<< orphan*/  D3DUSAGE_RENDERTARGET ; 
 int /*<<< orphan*/  EGL_D3D_TEXTURE_2D_SHARE_HANDLE_ANGLE ; 
 int /*<<< orphan*/  EGL_HEIGHT ; 
 int /*<<< orphan*/  EGL_NONE ; 
 scalar_t__ EGL_NO_SURFACE ; 
 int /*<<< orphan*/  EGL_TEXTURE_2D ; 
 int /*<<< orphan*/  EGL_TEXTURE_FORMAT ; 
 int /*<<< orphan*/  EGL_TEXTURE_RGB ; 
 int /*<<< orphan*/  EGL_TEXTURE_RGBA ; 
 int /*<<< orphan*/  EGL_TEXTURE_TARGET ; 
 int /*<<< orphan*/  EGL_WIDTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_CLAMP_TO_EDGE ; 
 int /*<<< orphan*/  GL_LINEAR ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_MAG_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_MIN_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_WRAP_S ; 
 int /*<<< orphan*/  GL_TEXTURE_WRAP_T ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IMGFMT_RGB0 ; 
 int /*<<< orphan*/  FUNC5 (struct ra_hwdec_mapper*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct ra_hwdec_mapper*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct ra_tex_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct ra_hwdec_mapper *mapper)
{
    struct priv_owner *p_owner = mapper->owner->priv;
    struct priv *p = mapper->priv;
    GL *gl = FUNC11(mapper->ra);
    HRESULT hr;

    p->device9ex = p_owner->device9ex;
    p->egl_display = p_owner->egl_display;

    hr = FUNC2(p->device9ex, D3DQUERYTYPE_EVENT,
                                      &p->query9);
    if (FUNC0(hr)) {
        FUNC6(mapper, "Failed to create Direct3D query interface: %s\n",
                 FUNC8(hr));
        goto fail;
    }

    // Test the query API
    hr = FUNC3(p->query9, D3DISSUE_END);
    if (FUNC0(hr)) {
        FUNC6(mapper, "Failed to issue Direct3D END test query: %s\n",
                 FUNC8(hr));
        goto fail;
    }

    HANDLE share_handle = NULL;
    hr = FUNC1(p->device9ex,
                                          mapper->src_params.w,
                                          mapper->src_params.h,
                                          1, D3DUSAGE_RENDERTARGET,
                                          p_owner->alpha ?
                                            D3DFMT_A8R8G8B8 : D3DFMT_X8R8G8B8,
                                          D3DPOOL_DEFAULT,
                                          &p->texture9,
                                          &share_handle);
    if (FUNC0(hr)) {
        FUNC5(mapper, "Failed to create Direct3D9 texture: %s\n",
               FUNC8(hr));
        goto fail;
    }

    hr = FUNC4(p->texture9, 0, &p->surface9);
    if (FUNC0(hr)) {
        FUNC5(mapper, "Failed to get Direct3D9 surface from texture: %s\n",
               FUNC8(hr));
        goto fail;
    }

    EGLint attrib_list[] = {
        EGL_WIDTH, mapper->src_params.w,
        EGL_HEIGHT, mapper->src_params.h,
        EGL_TEXTURE_FORMAT, p_owner->alpha ? EGL_TEXTURE_RGBA : EGL_TEXTURE_RGB,
        EGL_TEXTURE_TARGET, EGL_TEXTURE_2D,
        EGL_NONE
    };
    p->egl_surface = FUNC7(
        p->egl_display, EGL_D3D_TEXTURE_2D_SHARE_HANDLE_ANGLE,
        share_handle, p_owner->egl_config, attrib_list);
    if (p->egl_surface == EGL_NO_SURFACE) {
        FUNC5(mapper, "Failed to create EGL surface\n");
        goto fail;
    }

    gl->GenTextures(1, &p->gl_texture);
    gl->BindTexture(GL_TEXTURE_2D, p->gl_texture);
    gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    gl->TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    gl->BindTexture(GL_TEXTURE_2D, 0);

    struct ra_tex_params params = {
        .dimensions = 2,
        .w = mapper->src_params.w,
        .h = mapper->src_params.h,
        .d = 1,
        .format = FUNC10(mapper->ra, 1, p_owner->alpha ? 4 : 3),
        .render_src = true,
        .src_linear = true,
    };
    if (!params.format)
        goto fail;

    mapper->tex[0] = FUNC9(mapper->ra, &params, p->gl_texture);
    if (!mapper->tex[0])
        goto fail;

    mapper->dst_params = mapper->src_params;
    mapper->dst_params.imgfmt = IMGFMT_RGB0;
    mapper->dst_params.hw_subfmt = 0;
    return 0;
fail:
    return -1;
}