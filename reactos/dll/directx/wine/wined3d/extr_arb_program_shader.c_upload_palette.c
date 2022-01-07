
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_texture {TYPE_1__* swapchain; } ;
struct wined3d_palette {int const* colors; } ;
struct TYPE_5__ {int (* p_glTexImage1D ) (int ,int ,int ,int,int ,int ,int ,int const*) ;int (* p_glTexParameteri ) (int ,int ,int ) ;int (* p_glTexEnvi ) (int ,int ,int ) ;int (* p_glBindTexture ) (int ,int ) ;int (* p_glGenTextures ) (int,int *) ;} ;
struct TYPE_6__ {TYPE_2__ gl; } ;
struct wined3d_gl_info {TYPE_3__ gl_ops; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_arbfp_blitter {int palette_texture; } ;
struct TYPE_4__ {struct wined3d_palette* palette; } ;
typedef int DWORD ;


 int FIXME (char*) ;
 int GL_BGRA ;
 int GL_CLAMP_TO_EDGE ;
 int GL_EXTCALL (int ) ;
 int GL_NEAREST ;
 int GL_REPLACE ;
 int GL_RGB ;
 int GL_TEXTURE1 ;
 int GL_TEXTURE_1D ;
 int GL_TEXTURE_ENV ;
 int GL_TEXTURE_ENV_MODE ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_WRAP_S ;
 int GL_UNSIGNED_INT_8_8_8_8_REV ;
 int context_active_texture (struct wined3d_context*,struct wined3d_gl_info const*,int ) ;
 int glActiveTexture (int ) ;
 int stub1 (int,int *) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ,int ) ;
 int stub4 (int ,int ,int ) ;
 int stub5 (int ,int ,int ) ;
 int stub6 (int ,int ,int ) ;
 int stub7 (int ,int ,int ,int,int ,int ,int ,int const*) ;
 int stub8 (int ,int ,int ,int,int ,int ,int ,int const*) ;

__attribute__((used)) static void upload_palette(struct wined3d_arbfp_blitter *blitter,
        const struct wined3d_texture *texture, struct wined3d_context *context)
{
    const struct wined3d_palette *palette = texture->swapchain ? texture->swapchain->palette : ((void*)0);
    const struct wined3d_gl_info *gl_info = context->gl_info;

    if (!blitter->palette_texture)
        gl_info->gl_ops.gl.p_glGenTextures(1, &blitter->palette_texture);

    GL_EXTCALL(glActiveTexture(GL_TEXTURE1));
    gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_1D, blitter->palette_texture);

    gl_info->gl_ops.gl.p_glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_1D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);

    gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_1D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    gl_info->gl_ops.gl.p_glTexParameteri(GL_TEXTURE_1D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);

    if (palette)
    {
        gl_info->gl_ops.gl.p_glTexImage1D(GL_TEXTURE_1D, 0, GL_RGB, 256, 0, GL_BGRA,
                GL_UNSIGNED_INT_8_8_8_8_REV, palette->colors);
    }
    else
    {
        static const DWORD black;
        FIXME("P8 surface loaded without a palette.\n");
        gl_info->gl_ops.gl.p_glTexImage1D(GL_TEXTURE_1D, 0, GL_RGB, 1, 0, GL_BGRA,
                GL_UNSIGNED_INT_8_8_8_8_REV, &black);
    }


    context_active_texture(context, gl_info, 0);
}
