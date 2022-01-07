
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ra_tex_params {int dimensions; int initial_data; int d; int h; int w; scalar_t__ src_repeat; scalar_t__ src_linear; TYPE_1__* format; } ;
struct ra_tex_gl {int own_objects; int texture; int fbo; int target; int type; int format; int internal_format; } ;
struct TYPE_9__ {TYPE_2__* format; scalar_t__ downloadable; scalar_t__ blit_dst; scalar_t__ blit_src; scalar_t__ render_dst; } ;
struct ra_tex {TYPE_3__ params; struct ra_tex_gl* priv; } ;
struct ra {int log; } ;
struct TYPE_10__ {int mpgl_caps; scalar_t__ (* CheckFramebufferStatus ) (int ) ;int (* BindFramebuffer ) (int ,int ) ;int (* FramebufferTexture2D ) (int ,int ,int ,int ,int ) ;int (* GenFramebuffers ) (int,int *) ;int (* BindTexture ) (int ,int ) ;int (* PixelStorei ) (int ,int) ;int (* TexImage3D ) (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;int (* TexImage2D ) (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;int (* TexImage1D ) (int ,int ,int ,int ,int ,int ,int ,int ) ;int (* TexParameteri ) (int ,int ,int ) ;int (* GenTextures ) (int,int *) ;} ;
struct TYPE_8__ {int renderable; } ;
struct TYPE_7__ {int dummy_format; } ;
typedef int GLint ;
typedef scalar_t__ GLenum ;
typedef TYPE_4__ GL ;


 int GL_CLAMP_TO_EDGE ;
 int GL_COLOR_ATTACHMENT0 ;
 int GL_FRAMEBUFFER ;
 scalar_t__ GL_FRAMEBUFFER_COMPLETE ;
 int GL_LINEAR ;
 int GL_NEAREST ;
 int GL_REPEAT ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_WRAP_R ;
 int GL_TEXTURE_WRAP_S ;
 int GL_TEXTURE_WRAP_T ;
 int GL_UNPACK_ALIGNMENT ;
 int MPGL_CAP_FB ;
 int MP_ERR (struct ra*,char*,...) ;
 int assert (int) ;
 int gl_check_error (TYPE_4__*,int ,char*) ;
 struct ra_tex* gl_tex_create_blank (struct ra*,struct ra_tex_params const*) ;
 TYPE_4__* ra_gl_get (struct ra*) ;
 int ra_tex_free (struct ra*,struct ra_tex**) ;
 int stub1 (int,int *) ;
 int stub10 (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int stub11 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int stub12 (int ,int) ;
 int stub13 (int ,int ) ;
 int stub14 (int,int *) ;
 int stub15 (int ,int ) ;
 int stub16 (int ,int ,int ,int ,int ) ;
 scalar_t__ stub17 (int ) ;
 int stub18 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ,int ) ;
 int stub4 (int ,int ,int ) ;
 int stub5 (int ,int ,int ) ;
 int stub6 (int ,int ,int ) ;
 int stub7 (int ,int ,int ) ;
 int stub8 (int ,int) ;
 int stub9 (int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static struct ra_tex *gl_tex_create(struct ra *ra,
                                    const struct ra_tex_params *params)
{
    GL *gl = ra_gl_get(ra);
    assert(!params->format->dummy_format);

    struct ra_tex *tex = gl_tex_create_blank(ra, params);
    if (!tex)
        return ((void*)0);
    struct ra_tex_gl *tex_gl = tex->priv;

    tex_gl->own_objects = 1;

    gl->GenTextures(1, &tex_gl->texture);
    gl->BindTexture(tex_gl->target, tex_gl->texture);

    GLint filter = params->src_linear ? GL_LINEAR : GL_NEAREST;
    GLint wrap = params->src_repeat ? GL_REPEAT : GL_CLAMP_TO_EDGE;
    gl->TexParameteri(tex_gl->target, GL_TEXTURE_MIN_FILTER, filter);
    gl->TexParameteri(tex_gl->target, GL_TEXTURE_MAG_FILTER, filter);
    gl->TexParameteri(tex_gl->target, GL_TEXTURE_WRAP_S, wrap);
    if (params->dimensions > 1)
        gl->TexParameteri(tex_gl->target, GL_TEXTURE_WRAP_T, wrap);
    if (params->dimensions > 2)
        gl->TexParameteri(tex_gl->target, GL_TEXTURE_WRAP_R, wrap);

    gl->PixelStorei(GL_UNPACK_ALIGNMENT, 1);
    switch (params->dimensions) {
    case 1:
        gl->TexImage1D(tex_gl->target, 0, tex_gl->internal_format, params->w,
                       0, tex_gl->format, tex_gl->type, params->initial_data);
        break;
    case 2:
        gl->TexImage2D(tex_gl->target, 0, tex_gl->internal_format, params->w,
                       params->h, 0, tex_gl->format, tex_gl->type,
                       params->initial_data);
        break;
    case 3:
        gl->TexImage3D(tex_gl->target, 0, tex_gl->internal_format, params->w,
                       params->h, params->d, 0, tex_gl->format, tex_gl->type,
                       params->initial_data);
        break;
    }
    gl->PixelStorei(GL_UNPACK_ALIGNMENT, 4);

    gl->BindTexture(tex_gl->target, 0);

    gl_check_error(gl, ra->log, "after creating texture");



    if (tex->params.render_dst || tex->params.blit_src ||
        tex->params.blit_dst || tex->params.downloadable)
    {
        if (!tex->params.format->renderable) {
            MP_ERR(ra, "Trying to create renderable texture with unsupported "
                   "format.\n");
            ra_tex_free(ra, &tex);
            return ((void*)0);
        }

        assert(gl->mpgl_caps & MPGL_CAP_FB);

        gl->GenFramebuffers(1, &tex_gl->fbo);
        gl->BindFramebuffer(GL_FRAMEBUFFER, tex_gl->fbo);
        gl->FramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0,
                                 GL_TEXTURE_2D, tex_gl->texture, 0);
        GLenum err = gl->CheckFramebufferStatus(GL_FRAMEBUFFER);
        gl->BindFramebuffer(GL_FRAMEBUFFER, 0);

        if (err != GL_FRAMEBUFFER_COMPLETE) {
            MP_ERR(ra, "Error: framebuffer completeness check failed (error=%d).\n",
                   (int)err);
            ra_tex_free(ra, &tex);
            return ((void*)0);
        }


        gl_check_error(gl, ra->log, "after creating framebuffer");
    }

    return tex;
}
