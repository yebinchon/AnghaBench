
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* p_glBindTexture ) (int const,int ) ;} ;
struct TYPE_6__ {TYPE_2__ gl; } ;
struct wined3d_gl_info {TYPE_3__ gl_ops; } ;
struct wined3d_dummy_textures {int tex_2d_ms_array; int tex_2d_ms; int tex_buffer; int tex_3d; int tex_cube_array; int tex_cube; int tex_rect; int tex_2d_array; int tex_2d; int tex_1d_array; int tex_1d; } ;
struct wined3d_context {size_t active_texture; size_t* texture_type; struct wined3d_gl_info* gl_info; TYPE_1__* device; } ;
struct TYPE_4__ {struct wined3d_dummy_textures dummy_textures; } ;
typedef int GLuint ;
typedef size_t GLenum ;
typedef size_t DWORD ;


 int ERR (char*,size_t) ;
 int checkGLcall (char*) ;
 int stub1 (size_t,int ) ;
 int stub10 (int const,int ) ;
 int stub11 (int const,int ) ;
 int stub12 (int const,int ) ;
 int stub2 (int const,int ) ;
 int stub3 (int const,int ) ;
 int stub4 (int const,int ) ;
 int stub5 (int const,int ) ;
 int stub6 (int const,int ) ;
 int stub7 (int const,int ) ;
 int stub8 (int const,int ) ;
 int stub9 (int const,int ) ;

void context_bind_texture(struct wined3d_context *context, GLenum target, GLuint name)
{
    const struct wined3d_dummy_textures *textures = &context->device->dummy_textures;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    DWORD unit = context->active_texture;
    DWORD old_texture_type = context->texture_type[unit];

    if (name)
    {
        gl_info->gl_ops.gl.p_glBindTexture(target, name);
    }
    else
    {
        target = 139;
    }

    if (old_texture_type != target)
    {
        switch (old_texture_type)
        {
            case 139:

                break;
            case 138:
                gl_info->gl_ops.gl.p_glBindTexture(138, textures->tex_1d);
                checkGLcall("glBindTexture");
                break;
            case 137:
                gl_info->gl_ops.gl.p_glBindTexture(137, textures->tex_1d_array);
                checkGLcall("glBindTexture");
                break;
            case 136:
                gl_info->gl_ops.gl.p_glBindTexture(136, textures->tex_2d);
                break;
            case 135:
                gl_info->gl_ops.gl.p_glBindTexture(135, textures->tex_2d_array);
                break;
            case 128:
                gl_info->gl_ops.gl.p_glBindTexture(128, textures->tex_rect);
                break;
            case 130:
                gl_info->gl_ops.gl.p_glBindTexture(130, textures->tex_cube);
                break;
            case 129:
                gl_info->gl_ops.gl.p_glBindTexture(129, textures->tex_cube_array);
                break;
            case 132:
                gl_info->gl_ops.gl.p_glBindTexture(132, textures->tex_3d);
                break;
            case 131:
                gl_info->gl_ops.gl.p_glBindTexture(131, textures->tex_buffer);
                break;
            case 134:
                gl_info->gl_ops.gl.p_glBindTexture(134, textures->tex_2d_ms);
                break;
            case 133:
                gl_info->gl_ops.gl.p_glBindTexture(133, textures->tex_2d_ms_array);
                break;
            default:
                ERR("Unexpected texture target %#x.\n", old_texture_type);
        }

        context->texture_type[unit] = target;
    }

    checkGLcall("bind texture");
}
