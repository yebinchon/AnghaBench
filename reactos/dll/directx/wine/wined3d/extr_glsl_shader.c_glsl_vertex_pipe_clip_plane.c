
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ user_clip_distances; } ;
struct wined3d_gl_info {TYPE_1__ limits; } ;
struct wined3d_context {int constant_update_mask; struct wined3d_gl_info* gl_info; } ;
typedef scalar_t__ UINT ;
typedef scalar_t__ DWORD ;


 scalar_t__ STATE_CLIPPLANE (int ) ;
 int WINED3D_SHADER_CONST_VS_CLIP_PLANES ;

__attribute__((used)) static void glsl_vertex_pipe_clip_plane(struct wined3d_context *context,
        const struct wined3d_state *state, DWORD state_id)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    UINT index = state_id - STATE_CLIPPLANE(0);

    if (index >= gl_info->limits.user_clip_distances)
        return;

    context->constant_update_mask |= WINED3D_SHADER_CONST_VS_CLIP_PLANES;
}
