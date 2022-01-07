
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int dummy; } ;
struct shader_glsl_priv {int dummy; } ;
struct glsl_gs_program {int pos_fixup_location; } ;
typedef int GLuint ;


 int GL_EXTCALL (int ) ;
 int glGetUniformLocation (int ,char*) ;

__attribute__((used)) static void shader_glsl_init_gs_uniform_locations(const struct wined3d_gl_info *gl_info,
        struct shader_glsl_priv *priv, GLuint program_id, struct glsl_gs_program *gs)
{
    gs->pos_fixup_location = GL_EXTCALL(glGetUniformLocation(program_id, "pos_fixup"));
}
