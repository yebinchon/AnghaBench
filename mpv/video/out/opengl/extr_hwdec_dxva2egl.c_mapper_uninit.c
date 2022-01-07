
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ra_hwdec_mapper {int * tex; int ra; struct priv* priv; } ;
struct priv {scalar_t__ query9; scalar_t__ texture9; scalar_t__ surface9; scalar_t__ egl_surface; scalar_t__ egl_display; int gl_texture; } ;
struct TYPE_3__ {int (* DeleteTextures ) (int,int *) ;} ;
typedef TYPE_1__ GL ;


 int EGL_BACK_BUFFER ;
 int IDirect3DQuery9_Release (scalar_t__) ;
 int IDirect3DSurface9_Release (scalar_t__) ;
 int IDirect3DTexture9_Release (scalar_t__) ;
 int eglDestroySurface (scalar_t__,scalar_t__) ;
 int eglReleaseTexImage (scalar_t__,scalar_t__,int ) ;
 TYPE_1__* ra_gl_get (int ) ;
 int ra_tex_free (int ,int *) ;
 int stub1 (int,int *) ;

__attribute__((used)) static void mapper_uninit(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    GL *gl = ra_gl_get(mapper->ra);

    ra_tex_free(mapper->ra, &mapper->tex[0]);
    gl->DeleteTextures(1, &p->gl_texture);

    if (p->egl_display && p->egl_surface) {
        eglReleaseTexImage(p->egl_display, p->egl_surface, EGL_BACK_BUFFER);
        eglDestroySurface(p->egl_display, p->egl_surface);
    }

    if (p->surface9)
        IDirect3DSurface9_Release(p->surface9);

    if (p->texture9)
        IDirect3DTexture9_Release(p->texture9);

    if (p->query9)
        IDirect3DQuery9_Release(p->query9);
}
