
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_state {int dummy; } ;
struct wined3d_context {unsigned int shader_update_mask; } ;
typedef int DWORD ;


 int STATE_VDECL ;
 unsigned int WINED3D_SHADER_TYPE_VERTEX ;
 int context_apply_state (struct wined3d_context*,struct wined3d_state const*,int ) ;
 int isStateDirty (struct wined3d_context*,int ) ;

__attribute__((used)) static void glsl_vertex_pipe_vs(struct wined3d_context *context,
        const struct wined3d_state *state, DWORD state_id)
{
    context->shader_update_mask |= 1u << WINED3D_SHADER_TYPE_VERTEX;

    if (!isStateDirty(context, STATE_VDECL))
        context_apply_state(context, state, STATE_VDECL);
}
