
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int (* p_glBindTexture ) (int ,int ) ;} ;
struct TYPE_8__ {TYPE_3__ gl; } ;
struct TYPE_6__ {unsigned int combined_samplers; } ;
struct wined3d_gl_info {TYPE_4__ gl_ops; scalar_t__* supported; TYPE_2__ limits; } ;
struct wined3d_dummy_textures {int tex_2d_ms_array; int tex_2d_ms; int tex_buffer; int tex_2d_array; int tex_1d_array; int tex_cube_array; int tex_cube; int tex_3d; int tex_rect; int tex_2d; int tex_1d; } ;
struct wined3d_device {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; TYPE_1__* device; } ;
struct TYPE_5__ {struct wined3d_dummy_textures dummy_textures; } ;


 size_t ARB_TEXTURE_BUFFER_OBJECT ;
 size_t ARB_TEXTURE_CUBE_MAP ;
 size_t ARB_TEXTURE_CUBE_MAP_ARRAY ;
 size_t ARB_TEXTURE_MULTISAMPLE ;
 size_t ARB_TEXTURE_RECTANGLE ;
 size_t EXT_TEXTURE3D ;
 size_t EXT_TEXTURE_ARRAY ;
 int GL_EXTCALL (int ) ;
 scalar_t__ GL_TEXTURE0 ;
 int GL_TEXTURE_1D ;
 int GL_TEXTURE_1D_ARRAY ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_2D_ARRAY ;
 int GL_TEXTURE_2D_MULTISAMPLE ;
 int GL_TEXTURE_2D_MULTISAMPLE_ARRAY ;
 int GL_TEXTURE_3D ;
 int GL_TEXTURE_BUFFER ;
 int GL_TEXTURE_CUBE_MAP ;
 int GL_TEXTURE_CUBE_MAP_ARRAY ;
 int GL_TEXTURE_RECTANGLE_ARB ;
 int checkGLcall (char*) ;
 int glActiveTexture (scalar_t__) ;
 int stub1 (int ,int ) ;
 int stub10 (int ,int ) ;
 int stub11 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ) ;
 int stub5 (int ,int ) ;
 int stub6 (int ,int ) ;
 int stub7 (int ,int ) ;
 int stub8 (int ,int ) ;
 int stub9 (int ,int ) ;

void context_bind_dummy_textures(const struct wined3d_device *device, const struct wined3d_context *context)
{
    const struct wined3d_dummy_textures *textures = &context->device->dummy_textures;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    unsigned int i;

    for (i = 0; i < gl_info->limits.combined_samplers; ++i)
    {
        GL_EXTCALL(glActiveTexture(GL_TEXTURE0 + i));

        gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_1D, textures->tex_1d);
        gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_2D, textures->tex_2d);

        if (gl_info->supported[ARB_TEXTURE_RECTANGLE])
            gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_RECTANGLE_ARB, textures->tex_rect);

        if (gl_info->supported[EXT_TEXTURE3D])
            gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_3D, textures->tex_3d);

        if (gl_info->supported[ARB_TEXTURE_CUBE_MAP])
            gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_CUBE_MAP, textures->tex_cube);

        if (gl_info->supported[ARB_TEXTURE_CUBE_MAP_ARRAY])
            gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_CUBE_MAP_ARRAY, textures->tex_cube_array);

        if (gl_info->supported[EXT_TEXTURE_ARRAY])
        {
            gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_1D_ARRAY, textures->tex_1d_array);
            gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_2D_ARRAY, textures->tex_2d_array);
        }
        if (gl_info->supported[ARB_TEXTURE_BUFFER_OBJECT])
            gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_BUFFER, textures->tex_buffer);

        if (gl_info->supported[ARB_TEXTURE_MULTISAMPLE])
        {
            gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_2D_MULTISAMPLE, textures->tex_2d_ms);
            gl_info->gl_ops.gl.p_glBindTexture(GL_TEXTURE_2D_MULTISAMPLE_ARRAY, textures->tex_2d_ms_array);
        }
    }

    checkGLcall("bind dummy textures");
}
