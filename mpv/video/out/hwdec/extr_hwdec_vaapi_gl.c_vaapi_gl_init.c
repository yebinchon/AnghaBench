
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ra_hwdec {int ra; struct priv_owner* priv; } ;
struct priv_owner {int interop_unmap; int interop_map_legacy; int interop_map; int interop_uninit; int interop_init; } ;
struct TYPE_3__ {char const* extensions; int mpgl_caps; } ;
typedef TYPE_1__ GL ;


 int EGL_EXTENSIONS ;
 int MPGL_CAP_TEX_RG ;
 int MP_VERBOSE (struct ra_hwdec const*,char*) ;
 int eglGetCurrentContext () ;
 int eglGetCurrentDisplay () ;
 char* eglQueryString (int ,int ) ;
 TYPE_1__* ra_gl_get (int ) ;
 int ra_is_gl (int ) ;
 int strstr (char const*,char*) ;
 int vaapi_gl_map ;
 int vaapi_gl_map_legacy ;
 int vaapi_gl_mapper_init ;
 int vaapi_gl_mapper_uninit ;
 int vaapi_gl_unmap ;

bool vaapi_gl_init(const struct ra_hwdec *hw)
{
    struct priv_owner *p = hw->priv;
    if (!ra_is_gl(hw->ra)) {

        return 0;
    }

    if (!eglGetCurrentContext())
        return 0;

    const char *exts = eglQueryString(eglGetCurrentDisplay(), EGL_EXTENSIONS);
    if (!exts)
        return 0;

    GL *gl = ra_gl_get(hw->ra);
    if (!strstr(exts, "EXT_image_dma_buf_import") ||
        !strstr(exts, "EGL_KHR_image_base") ||
        !strstr(gl->extensions, "GL_OES_EGL_image") ||
        !(gl->mpgl_caps & MPGL_CAP_TEX_RG))
        return 0;

    MP_VERBOSE(hw, "using VAAPI EGL interop\n");

    p->interop_init = vaapi_gl_mapper_init;
    p->interop_uninit = vaapi_gl_mapper_uninit;
    p->interop_map = vaapi_gl_map;
    p->interop_map_legacy = vaapi_gl_map_legacy;
    p->interop_unmap = vaapi_gl_unmap;

    return 1;
}
