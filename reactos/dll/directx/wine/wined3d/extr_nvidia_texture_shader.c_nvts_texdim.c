
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_state {int dummy; } ;
struct wined3d_context {size_t* tex_unit_map; size_t lowest_disabled_stage; TYPE_2__* gl_info; } ;
struct TYPE_3__ {size_t textures; } ;
struct TYPE_4__ {TYPE_1__ limits; } ;
typedef size_t DWORD ;


 size_t STATE_SAMPLER (int ) ;
 int STATE_TEXTURESTAGE (size_t,int ) ;
 int WINED3D_TSS_COLOR_OP ;
 size_t WINED3D_UNMAPPED_STAGE ;
 scalar_t__ isStateDirty (struct wined3d_context*,int ) ;
 int nvts_activate_dimensions (struct wined3d_state const*,size_t,struct wined3d_context*) ;

__attribute__((used)) static void nvts_texdim(struct wined3d_context *context, const struct wined3d_state *state, DWORD state_id)
{
    DWORD sampler = state_id - STATE_SAMPLER(0);
    DWORD mapped_stage = context->tex_unit_map[sampler];




    if (mapped_stage == WINED3D_UNMAPPED_STAGE || mapped_stage >= context->gl_info->limits.textures)
        return;
    if (sampler >= context->lowest_disabled_stage)
        return;
    if (isStateDirty(context, STATE_TEXTURESTAGE(sampler, WINED3D_TSS_COLOR_OP)))
        return;

    nvts_activate_dimensions(state, sampler, context);
}
