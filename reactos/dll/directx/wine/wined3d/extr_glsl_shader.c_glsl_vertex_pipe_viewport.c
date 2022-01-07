
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_state {scalar_t__* render_states; } ;
struct wined3d_context {int constant_update_mask; } ;
typedef int DWORD ;


 int STATE_RENDER (size_t) ;
 int STATE_TRANSFORM (int ) ;
 size_t WINED3D_RS_POINTSCALEENABLE ;
 int WINED3D_SHADER_CONST_POS_FIXUP ;
 int WINED3D_SHADER_CONST_VS_POINTSIZE ;
 int WINED3D_TS_PROJECTION ;
 int glsl_vertex_pipe_projection (struct wined3d_context*,struct wined3d_state const*,int ) ;
 int isStateDirty (struct wined3d_context*,int ) ;

__attribute__((used)) static void glsl_vertex_pipe_viewport(struct wined3d_context *context,
        const struct wined3d_state *state, DWORD state_id)
{
    if (!isStateDirty(context, STATE_TRANSFORM(WINED3D_TS_PROJECTION)))
        glsl_vertex_pipe_projection(context, state, STATE_TRANSFORM(WINED3D_TS_PROJECTION));
    if (!isStateDirty(context, STATE_RENDER(WINED3D_RS_POINTSCALEENABLE))
            && state->render_states[WINED3D_RS_POINTSCALEENABLE])
        context->constant_update_mask |= WINED3D_SHADER_CONST_VS_POINTSIZE;
    context->constant_update_mask |= WINED3D_SHADER_CONST_POS_FIXUP;
}
