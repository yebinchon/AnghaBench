
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_state {int dummy; } ;
struct wined3d_context {int dummy; } ;
typedef int DWORD ;


 int STATE_SHADER (int ) ;
 int WINED3D_SHADER_TYPE_PIXEL ;
 int fragment_prog_arbfp (struct wined3d_context*,struct wined3d_state const*,int ) ;
 int isStateDirty (struct wined3d_context*,int ) ;

__attribute__((used)) static void textransform(struct wined3d_context *context, const struct wined3d_state *state, DWORD state_id)
{
    if (!isStateDirty(context, STATE_SHADER(WINED3D_SHADER_TYPE_PIXEL)))
        fragment_prog_arbfp(context, state, state_id);
}
