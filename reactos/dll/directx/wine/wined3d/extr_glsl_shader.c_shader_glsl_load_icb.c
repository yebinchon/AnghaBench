
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_string_buffer {int buffer; } ;
struct TYPE_2__ {int type; } ;
struct wined3d_shader_reg_maps {TYPE_1__ shader_version; struct wined3d_shader_immediate_constant_buffer* icb; } ;
struct wined3d_shader_immediate_constant_buffer {scalar_t__ data; int vec4_count; } ;
struct wined3d_gl_info {int dummy; } ;
struct shader_glsl_priv {int string_buffers; } ;
typedef int GLuint ;
typedef int GLint ;
typedef int GLfloat ;


 int GL_EXTCALL (int ) ;
 int checkGLcall (char*) ;
 int glGetUniformLocation (int ,int ) ;
 int glUniform4fv (int ,int ,int const*) ;
 char* shader_glsl_get_prefix (int ) ;
 struct wined3d_string_buffer* string_buffer_get (int *) ;
 int string_buffer_release (int *,struct wined3d_string_buffer*) ;
 int string_buffer_sprintf (struct wined3d_string_buffer*,char*,char const*) ;

__attribute__((used)) static void shader_glsl_load_icb(const struct wined3d_gl_info *gl_info, struct shader_glsl_priv *priv,
        GLuint program_id, const struct wined3d_shader_reg_maps *reg_maps)
{
    const struct wined3d_shader_immediate_constant_buffer *icb = reg_maps->icb;

    if (icb)
    {
        struct wined3d_string_buffer *icb_name = string_buffer_get(&priv->string_buffers);
        const char *prefix = shader_glsl_get_prefix(reg_maps->shader_version.type);
        GLint icb_location;

        string_buffer_sprintf(icb_name, "%s_icb", prefix);
        icb_location = GL_EXTCALL(glGetUniformLocation(program_id, icb_name->buffer));
        GL_EXTCALL(glUniform4fv(icb_location, icb->vec4_count, (const GLfloat *)icb->data));
        checkGLcall("Load immediate constant buffer");

        string_buffer_release(&priv->string_buffers, icb_name);
    }
}
