
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_string_buffer {int buffer; } ;
struct TYPE_4__ {int type; } ;
struct wined3d_shader_reg_maps {TYPE_1__* uav_resource_info; TYPE_2__ shader_version; } ;
struct wined3d_gl_info {int dummy; } ;
struct shader_glsl_priv {int string_buffers; } ;
struct TYPE_3__ {int type; } ;
typedef int GLuint ;
typedef int GLint ;


 int GL_EXTCALL (int ) ;
 unsigned int MAX_UNORDERED_ACCESS_VIEWS ;
 int TRACE (char*,int ,unsigned int) ;
 int checkGLcall (char*) ;
 int glGetUniformLocation (int ,int ) ;
 int glUniform1i (int,unsigned int) ;
 char* shader_glsl_get_prefix (int ) ;
 scalar_t__ shader_glsl_use_layout_binding_qualifier (struct wined3d_gl_info const*) ;
 struct wined3d_string_buffer* string_buffer_get (int *) ;
 int string_buffer_release (int *,struct wined3d_string_buffer*) ;
 int string_buffer_sprintf (struct wined3d_string_buffer*,char*,char const*,unsigned int) ;

__attribute__((used)) static void shader_glsl_load_images(const struct wined3d_gl_info *gl_info, struct shader_glsl_priv *priv,
        GLuint program_id, const struct wined3d_shader_reg_maps *reg_maps)
{
    const char *prefix = shader_glsl_get_prefix(reg_maps->shader_version.type);
    struct wined3d_string_buffer *name;
    GLint location;
    unsigned int i;

    if (shader_glsl_use_layout_binding_qualifier(gl_info))
        return;

    name = string_buffer_get(&priv->string_buffers);
    for (i = 0; i < MAX_UNORDERED_ACCESS_VIEWS; ++i)
    {
        if (!reg_maps->uav_resource_info[i].type)
            continue;

        string_buffer_sprintf(name, "%s_image%u", prefix, i);
        location = GL_EXTCALL(glGetUniformLocation(program_id, name->buffer));
        if (location == -1)
            continue;

        TRACE("Loading image %s on unit %u.\n", name->buffer, i);
        GL_EXTCALL(glUniform1i(location, i));
    }
    checkGLcall("Load image bindings");
    string_buffer_release(&priv->string_buffers, name);
}
