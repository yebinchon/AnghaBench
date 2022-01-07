
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ra_tex_upload_params {void* src; int stride; struct mp_rect* rc; scalar_t__ invalidate; scalar_t__ buf_offset; struct ra_buf* buf; struct ra_tex* tex; } ;
struct ra_tex_gl {int target; int type; int format; int internal_format; int texture; int pbo; } ;
struct TYPE_6__ {int host_mutable; int dimensions; int d; int h; int w; } ;
struct ra_tex {TYPE_1__ params; struct ra_tex_gl* priv; } ;
struct ra_buf_gl {int fence; int buffer; } ;
struct TYPE_7__ {scalar_t__ host_mapped; } ;
struct ra_buf {TYPE_2__ params; struct ra_buf_gl* priv; } ;
struct ra {scalar_t__ use_pbo; } ;
struct mp_rect {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_8__ {int (* FenceSync ) (int ,int ) ;int (* DeleteSync ) (int ) ;int (* BindBuffer ) (int ,int ) ;int (* BindTexture ) (int ,int ) ;int (* PixelStorei ) (int ,int) ;int (* TexImage3D ) (int ,int ,int ,int ,int ,int ,int ,int ,int ,void const*) ;int (* TexImage1D ) (int ,int ,int ,int ,int ,int ,int ,void const*) ;int (* InvalidateTexImage ) (int ,int ) ;} ;
typedef TYPE_3__ GL ;


 int GL_PIXEL_UNPACK_BUFFER ;
 int GL_SYNC_GPU_COMMANDS_COMPLETE ;
 int GL_TEXTURE_3D ;
 int GL_UNPACK_ALIGNMENT ;
 int assert (int) ;
 int gl_upload_tex (TYPE_3__*,int ,int ,int ,void const*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_3__* ra_gl_get (struct ra*) ;
 int ra_tex_upload_pbo (struct ra*,int *,struct ra_tex_upload_params const*) ;
 int stub1 (int ,int ) ;
 int stub10 (int ) ;
 int stub11 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ,int ,int ,int ,int ,int ,void const*) ;
 int stub5 (int ,int) ;
 int stub6 (int ,int ,int ,int ,int ,int ,int ,int ,int ,void const*) ;
 int stub7 (int ,int) ;
 int stub8 (int ,int ) ;
 int stub9 (int ,int ) ;

__attribute__((used)) static bool gl_tex_upload(struct ra *ra,
                          const struct ra_tex_upload_params *params)
{
    GL *gl = ra_gl_get(ra);
    struct ra_tex *tex = params->tex;
    struct ra_buf *buf = params->buf;
    struct ra_tex_gl *tex_gl = tex->priv;
    struct ra_buf_gl *buf_gl = buf ? buf->priv : ((void*)0);
    assert(tex->params.host_mutable);
    assert(!params->buf || !params->src);

    if (ra->use_pbo && !params->buf)
        return ra_tex_upload_pbo(ra, &tex_gl->pbo, params);

    const void *src = params->src;
    if (buf) {
        gl->BindBuffer(GL_PIXEL_UNPACK_BUFFER, buf_gl->buffer);
        src = (void *)params->buf_offset;
    }

    gl->BindTexture(tex_gl->target, tex_gl->texture);
    if (params->invalidate && gl->InvalidateTexImage)
        gl->InvalidateTexImage(tex_gl->texture, 0);

    switch (tex->params.dimensions) {
    case 1:
        gl->TexImage1D(tex_gl->target, 0, tex_gl->internal_format,
                       tex->params.w, 0, tex_gl->format, tex_gl->type, src);
        break;
    case 2: {
        struct mp_rect rc = {0, 0, tex->params.w, tex->params.h};
        if (params->rc)
            rc = *params->rc;
        gl_upload_tex(gl, tex_gl->target, tex_gl->format, tex_gl->type,
                      src, params->stride, rc.x0, rc.y0, rc.x1 - rc.x0,
                      rc.y1 - rc.y0);
        break;
    }
    case 3:
        gl->PixelStorei(GL_UNPACK_ALIGNMENT, 1);
        gl->TexImage3D(GL_TEXTURE_3D, 0, tex_gl->internal_format, tex->params.w,
                       tex->params.h, tex->params.d, 0, tex_gl->format,
                       tex_gl->type, src);
        gl->PixelStorei(GL_UNPACK_ALIGNMENT, 4);
        break;
    }

    gl->BindTexture(tex_gl->target, 0);

    if (buf) {
        gl->BindBuffer(GL_PIXEL_UNPACK_BUFFER, 0);
        if (buf->params.host_mapped) {



            gl->DeleteSync(buf_gl->fence);
            buf_gl->fence = gl->FenceSync(GL_SYNC_GPU_COMMANDS_COMPLETE, 0);
        }
    }

    return 1;
}
