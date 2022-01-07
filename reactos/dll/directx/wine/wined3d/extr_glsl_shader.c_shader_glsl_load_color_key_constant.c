
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int src_blt_color_key; } ;
struct TYPE_3__ {int format; } ;
struct wined3d_texture {TYPE_2__ async; TYPE_1__ resource; } ;
struct wined3d_state {struct wined3d_texture** textures; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_color {int r; } ;
struct glsl_ps_program {int color_key_location; } ;


 int GL_EXTCALL (int ) ;
 int glUniform4fv (int ,int,int *) ;
 int wined3d_format_get_float_color_key (int ,int *,struct wined3d_color*) ;

__attribute__((used)) static void shader_glsl_load_color_key_constant(const struct glsl_ps_program *ps,
        const struct wined3d_gl_info *gl_info, const struct wined3d_state *state)
{
    struct wined3d_color float_key[2];
    const struct wined3d_texture *texture = state->textures[0];

    wined3d_format_get_float_color_key(texture->resource.format, &texture->async.src_blt_color_key, float_key);
    GL_EXTCALL(glUniform4fv(ps->color_key_location, 2, &float_key[0].r));
}
