
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int dummy; } ;
typedef int GLuint ;
typedef int GLint ;


 int FIXME (char*,int ) ;
 int FIXME_ON (int ) ;
 int GL_EXTCALL (int ) ;
 int GL_LINK_STATUS ;
 int TRACE_ON (int ) ;
 int TRUE ;
 int d3d_shader ;
 int glGetProgramiv (int ,int ,int *) ;
 int print_glsl_info_log (struct wined3d_gl_info const*,int ,int ) ;
 int shader_glsl_dump_program_source (struct wined3d_gl_info const*,int ) ;

void shader_glsl_validate_link(const struct wined3d_gl_info *gl_info, GLuint program)
{
    GLint tmp;

    if (!TRACE_ON(d3d_shader) && !FIXME_ON(d3d_shader))
        return;

    GL_EXTCALL(glGetProgramiv(program, GL_LINK_STATUS, &tmp));
    if (!tmp)
    {
        FIXME("Program %u link status invalid.\n", program);
        shader_glsl_dump_program_source(gl_info, program);
    }

    print_glsl_info_log(gl_info, program, TRUE);
}
