
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ra_tex_params {int dimensions; int w; int h; int d; int render_src; int src_linear; int external_oes; int format; } ;
struct ra_hwdec_mapper {int * tex; int ra; TYPE_2__* src; struct priv* priv; TYPE_1__* owner; } ;
struct priv_owner {int egl_display; int (* StreamConsumerAcquireKHR ) (int ,int ) ;int (* StreamPostD3DTextureANGLE ) (int ,int ,void*,int*) ;} ;
struct priv {int * gl_textures; int egl_stream; } ;
struct TYPE_7__ {int Width; int Height; } ;
struct TYPE_6__ {scalar_t__* planes; } ;
struct TYPE_5__ {struct priv_owner* priv; } ;
typedef int ID3D11Texture2D ;
typedef int EGLAttrib ;
typedef TYPE_3__ D3D11_TEXTURE2D_DESC ;


 int EGL_D3D_TEXTURE_SUBRESOURCE_ID_ANGLE ;
 int EGL_NONE ;
 int ID3D11Texture2D_GetDesc (int *,TYPE_3__*) ;
 int ra_create_wrapped_tex (int ,struct ra_tex_params*,int ) ;
 int ra_find_unorm_format (int ,int,int) ;
 int stub1 (int ,int ,void*,int*) ;
 int stub2 (int ,int ,void*,int*) ;
 int stub3 (int ,int ) ;

__attribute__((used)) static int mapper_map(struct ra_hwdec_mapper *mapper)
{
    struct priv_owner *o = mapper->owner->priv;
    struct priv *p = mapper->priv;

    ID3D11Texture2D *d3d_tex = (void *)mapper->src->planes[0];
    int d3d_subindex = (intptr_t)mapper->src->planes[1];
    if (!d3d_tex)
        return -1;

    EGLAttrib attrs[] = {
        EGL_D3D_TEXTURE_SUBRESOURCE_ID_ANGLE, d3d_subindex,
        EGL_NONE,
    };
    if (!o->StreamPostD3DTextureANGLE(o->egl_display, p->egl_stream,
                                      (void *)d3d_tex, attrs))
    {

        attrs[0] = attrs[0] == 0x33AB ? 0x3AAB : 0x33AB;
        if (!o->StreamPostD3DTextureANGLE(o->egl_display, p->egl_stream,
                                              (void *)d3d_tex, attrs))
            return -1;
    }

    if (!o->StreamConsumerAcquireKHR(o->egl_display, p->egl_stream))
        return -1;

    D3D11_TEXTURE2D_DESC texdesc;
    ID3D11Texture2D_GetDesc(d3d_tex, &texdesc);

    for (int n = 0; n < 2; n++) {
        struct ra_tex_params params = {
            .dimensions = 2,
            .w = texdesc.Width / (n ? 2 : 1),
            .h = texdesc.Height / (n ? 2 : 1),
            .d = 1,
            .format = ra_find_unorm_format(mapper->ra, 1, n ? 2 : 1),
            .render_src = 1,
            .src_linear = 1,
            .external_oes = 1,
        };
        if (!params.format)
            return -1;

        mapper->tex[n] = ra_create_wrapped_tex(mapper->ra, &params,
                                               p->gl_textures[n]);
        if (!mapper->tex[n])
            return -1;
    }

    return 0;
}
