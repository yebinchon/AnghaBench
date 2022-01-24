#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ra_hwdec {int /*<<< orphan*/  ra; struct priv_owner* priv; } ;
struct priv_owner {int /*<<< orphan*/  interop_unmap; int /*<<< orphan*/  interop_map_legacy; int /*<<< orphan*/  interop_map; int /*<<< orphan*/  interop_uninit; int /*<<< orphan*/  interop_init; } ;
struct TYPE_3__ {char const* extensions; int mpgl_caps; } ;
typedef  TYPE_1__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_EXTENSIONS ; 
 int MPGL_CAP_TEX_RG ; 
 int /*<<< orphan*/  FUNC0 (struct ra_hwdec const*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  vaapi_gl_map ; 
 int /*<<< orphan*/  vaapi_gl_map_legacy ; 
 int /*<<< orphan*/  vaapi_gl_mapper_init ; 
 int /*<<< orphan*/  vaapi_gl_mapper_uninit ; 
 int /*<<< orphan*/  vaapi_gl_unmap ; 

bool FUNC7(const struct ra_hwdec *hw)
{
    struct priv_owner *p = hw->priv;
    if (!FUNC5(hw->ra)) {
        // This is not an OpenGL RA.
        return false;
    }

    if (!FUNC1())
        return false;

    const char *exts = FUNC3(FUNC2(), EGL_EXTENSIONS);
    if (!exts)
        return false;

    GL *gl = FUNC4(hw->ra);
    if (!FUNC6(exts, "EXT_image_dma_buf_import") ||
        !FUNC6(exts, "EGL_KHR_image_base") ||
        !FUNC6(gl->extensions, "GL_OES_EGL_image") ||
        !(gl->mpgl_caps & MPGL_CAP_TEX_RG))
        return false;

    FUNC0(hw, "using VAAPI EGL interop\n");

    p->interop_init = vaapi_gl_mapper_init;
    p->interop_uninit = vaapi_gl_mapper_uninit;
    p->interop_map = vaapi_gl_map;
    p->interop_map_legacy = vaapi_gl_map_legacy;
    p->interop_unmap = vaapi_gl_unmap;

    return true;
}