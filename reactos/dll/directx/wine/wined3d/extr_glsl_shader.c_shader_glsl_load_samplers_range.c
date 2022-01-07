
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_string_buffer {int buffer; } ;
struct TYPE_2__ {unsigned int combined_samplers; } ;
struct wined3d_gl_info {TYPE_1__ limits; } ;
struct shader_glsl_priv {int string_buffers; } ;
typedef int GLuint ;
typedef int GLint ;
typedef unsigned int DWORD ;


 int ERR (char*,int ,unsigned int) ;
 int GL_EXTCALL (int ) ;
 int TRACE (char*,int ,unsigned int) ;
 unsigned int WINED3D_UNMAPPED_STAGE ;
 int checkGLcall (char*) ;
 int glGetUniformLocation (int ,int ) ;
 int glUniform1i (int,unsigned int) ;
 struct wined3d_string_buffer* string_buffer_get (int *) ;
 int string_buffer_release (int *,struct wined3d_string_buffer*) ;
 int string_buffer_sprintf (struct wined3d_string_buffer*,char*,char const*,unsigned int) ;

__attribute__((used)) static void shader_glsl_load_samplers_range(const struct wined3d_gl_info *gl_info,
        struct shader_glsl_priv *priv, GLuint program_id, const char *prefix,
        unsigned int base, unsigned int count, const DWORD *tex_unit_map)
{
    struct wined3d_string_buffer *sampler_name = string_buffer_get(&priv->string_buffers);
    unsigned int i, mapped_unit;
    GLint name_loc;

    for (i = 0; i < count; ++i)
    {
        string_buffer_sprintf(sampler_name, "%s_sampler%u", prefix, i);
        name_loc = GL_EXTCALL(glGetUniformLocation(program_id, sampler_name->buffer));
        if (name_loc == -1)
            continue;

        mapped_unit = tex_unit_map ? tex_unit_map[base + i] : base + i;
        if (mapped_unit == WINED3D_UNMAPPED_STAGE || mapped_unit >= gl_info->limits.combined_samplers)
        {
            ERR("Trying to load sampler %s on unsupported unit %u.\n", sampler_name->buffer, mapped_unit);
            continue;
        }

        TRACE("Loading sampler %s on unit %u.\n", sampler_name->buffer, mapped_unit);
        GL_EXTCALL(glUniform1i(name_loc, mapped_unit));
    }
    checkGLcall("Load sampler bindings");
    string_buffer_release(&priv->string_buffers, sampler_name);
}
