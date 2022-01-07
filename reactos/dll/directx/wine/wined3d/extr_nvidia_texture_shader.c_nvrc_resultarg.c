
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_state {int dummy; } ;
struct wined3d_context {int dummy; } ;
typedef int DWORD ;


 int STATE_TEXTURESTAGE (int,int ) ;
 int TRACE (char*,int) ;
 int WINED3D_HIGHEST_TEXTURE_STATE ;
 int WINED3D_TSS_ALPHA_OP ;
 int WINED3D_TSS_COLOR_OP ;
 int context_apply_state (struct wined3d_context*,struct wined3d_state const*,int) ;
 int isStateDirty (struct wined3d_context*,int) ;

__attribute__((used)) static void nvrc_resultarg(struct wined3d_context *context, const struct wined3d_state *state, DWORD state_id)
{
    DWORD stage = (state_id - STATE_TEXTURESTAGE(0, 0)) / (WINED3D_HIGHEST_TEXTURE_STATE + 1);

    TRACE("Setting result arg for stage %u.\n", stage);

    if (!isStateDirty(context, STATE_TEXTURESTAGE(stage, WINED3D_TSS_COLOR_OP)))
    {
        context_apply_state(context, state, STATE_TEXTURESTAGE(stage, WINED3D_TSS_COLOR_OP));
    }
    if (!isStateDirty(context, STATE_TEXTURESTAGE(stage, WINED3D_TSS_ALPHA_OP)))
    {
        context_apply_state(context, state, STATE_TEXTURESTAGE(stage, WINED3D_TSS_ALPHA_OP));
    }
}
