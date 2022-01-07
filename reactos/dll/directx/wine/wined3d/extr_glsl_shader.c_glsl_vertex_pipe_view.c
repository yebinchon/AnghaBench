
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_state {int dummy; } ;
struct TYPE_2__ {unsigned int user_clip_distances; } ;
struct wined3d_gl_info {TYPE_1__ limits; } ;
struct wined3d_context {int constant_update_mask; struct wined3d_gl_info* gl_info; } ;
typedef int DWORD ;


 int STATE_CLIPPLANE (unsigned int) ;
 int WINED3D_SHADER_CONST_FFP_LIGHTS ;
 int WINED3D_SHADER_CONST_FFP_MODELVIEW ;
 int WINED3D_SHADER_CONST_FFP_VERTEXBLEND ;
 int WINED3D_SHADER_CONST_VS_CLIP_PLANES ;
 int clipplane (struct wined3d_context*,struct wined3d_state const*,int ) ;
 int isStateDirty (struct wined3d_context*,int ) ;
 scalar_t__ needs_legacy_glsl_syntax (struct wined3d_gl_info const*) ;

__attribute__((used)) static void glsl_vertex_pipe_view(struct wined3d_context *context, const struct wined3d_state *state, DWORD state_id)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    unsigned int k;

    context->constant_update_mask |= WINED3D_SHADER_CONST_FFP_MODELVIEW
            | WINED3D_SHADER_CONST_FFP_LIGHTS
            | WINED3D_SHADER_CONST_FFP_VERTEXBLEND;

    if (needs_legacy_glsl_syntax(gl_info))
    {
        for (k = 0; k < gl_info->limits.user_clip_distances; ++k)
        {
            if (!isStateDirty(context, STATE_CLIPPLANE(k)))
                clipplane(context, state, STATE_CLIPPLANE(k));
        }
    }
    else
    {
        context->constant_update_mask |= WINED3D_SHADER_CONST_VS_CLIP_PLANES;
    }
}
