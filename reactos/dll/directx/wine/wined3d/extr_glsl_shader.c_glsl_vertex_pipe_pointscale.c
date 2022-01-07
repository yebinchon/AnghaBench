
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_state {int dummy; } ;
struct wined3d_context {int constant_update_mask; } ;
typedef int DWORD ;


 int WINED3D_SHADER_CONST_VS_POINTSIZE ;
 int use_vs (struct wined3d_state const*) ;

__attribute__((used)) static void glsl_vertex_pipe_pointscale(struct wined3d_context *context,
        const struct wined3d_state *state, DWORD state_id)
{
    if (!use_vs(state))
        context->constant_update_mask |= WINED3D_SHADER_CONST_VS_POINTSIZE;
}
