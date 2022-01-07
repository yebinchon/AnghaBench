
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_state {int dummy; } ;
struct wined3d_context {unsigned int shader_update_mask; int last_was_pshader; } ;
typedef int DWORD ;


 unsigned int WINED3D_SHADER_TYPE_PIXEL ;
 int use_ps (struct wined3d_state const*) ;

__attribute__((used)) static void glsl_fragment_pipe_shader(struct wined3d_context *context,
        const struct wined3d_state *state, DWORD state_id)
{
    context->last_was_pshader = use_ps(state);

    context->shader_update_mask |= 1u << WINED3D_SHADER_TYPE_PIXEL;
}
