
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vaapi_gl_mapper_priv {int * gl_textures; void* EGLImageTargetTexture2DOES; void* DestroyImageKHR; void* CreateImageKHR; } ;
struct ra_tex_params {int dimensions; int d; int render_src; int src_linear; TYPE_1__* format; int h; int w; } ;
struct ra_imgfmt_desc {int num_planes; TYPE_1__** planes; } ;
struct ra_hwdec_mapper {int ra; struct priv* priv; } ;
struct priv {int * tex; int layout; struct vaapi_gl_mapper_priv* interop_mapper_priv; } ;
struct TYPE_5__ {int (* BindTexture ) (int ,int ) ;int (* TexParameteri ) (int ,int ,int ) ;int (* GenTextures ) (int,int *) ;} ;
struct TYPE_4__ {scalar_t__ ctype; } ;
typedef TYPE_2__ GL ;


 int GL_CLAMP_TO_EDGE ;
 int GL_LINEAR ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_WRAP_S ;
 int GL_TEXTURE_WRAP_T ;
 scalar_t__ RA_CTYPE_UNORM ;
 scalar_t__ eglGetProcAddress (char*) ;
 int mp_image_plane_h (int *,int) ;
 int mp_image_plane_w (int *,int) ;
 struct vaapi_gl_mapper_priv* p ;
 int ra_create_wrapped_tex (int ,struct ra_tex_params*,int ) ;
 TYPE_2__* ra_gl_get (int ) ;
 int stub1 (int,int *) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ,int ) ;
 int stub4 (int ,int ,int ) ;
 int stub5 (int ,int ,int ) ;
 int stub6 (int ,int ,int ) ;
 int stub7 (int ,int ) ;
 struct vaapi_gl_mapper_priv* talloc_ptrtype (int *,int ) ;

__attribute__((used)) static bool vaapi_gl_mapper_init(struct ra_hwdec_mapper *mapper,
                                 const struct ra_imgfmt_desc *desc)
{
    struct priv *p_mapper = mapper->priv;
    struct vaapi_gl_mapper_priv *p = talloc_ptrtype(((void*)0), p);
    p_mapper->interop_mapper_priv = p;


    p->CreateImageKHR = (void *)eglGetProcAddress("eglCreateImageKHR");
    p->DestroyImageKHR = (void *)eglGetProcAddress("eglDestroyImageKHR");

    p->EGLImageTargetTexture2DOES =
        (void *)eglGetProcAddress("glEGLImageTargetTexture2DOES");

    if (!p->CreateImageKHR || !p->DestroyImageKHR ||
        !p->EGLImageTargetTexture2DOES)
        return 0;

    GL *gl = ra_gl_get(mapper->ra);
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
            .w = mp_image_plane_w(&p_mapper->layout, n),
            .h = mp_image_plane_h(&p_mapper->layout, n),
            .d = 1,
            .format = desc->planes[n],
            .render_src = 1,
            .src_linear = 1,
        };

        if (params.format->ctype != RA_CTYPE_UNORM)
            return 0;

        p_mapper->tex[n] = ra_create_wrapped_tex(mapper->ra, &params,
                                                 p->gl_textures[n]);
        if (!p_mapper->tex[n])
            return 0;
    }

    return 1;
}
