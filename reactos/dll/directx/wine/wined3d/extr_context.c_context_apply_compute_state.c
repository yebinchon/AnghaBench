
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_state {int * unordered_access_view; int * shader; } ;
struct TYPE_4__ {scalar_t__ combined_samplers; scalar_t__ graphics_samplers; } ;
struct wined3d_gl_info {TYPE_2__ limits; } ;
struct wined3d_device {int shader_priv; TYPE_1__* shader_backend; } ;
struct wined3d_context {unsigned int* dirty_compute_states; unsigned int shader_update_mask; int update_shader_resource_bindings; int update_unordered_access_view_bindings; int last_was_blit; scalar_t__ update_compute_unordered_access_view_bindings; scalar_t__ update_compute_shader_resource_bindings; struct wined3d_gl_info* gl_info; struct StateEntry* state_table; } ;
struct StateEntry {int (* apply ) (struct wined3d_context*,struct wined3d_state const*,unsigned int) ;} ;
struct TYPE_3__ {int (* shader_select_compute ) (int ,struct wined3d_context*,struct wined3d_state const*) ;} ;


 unsigned int ARRAY_SIZE (unsigned int*) ;
 int CHAR_BIT ;
 int FALSE ;
 int GL_FRAMEBUFFER ;
 unsigned int STATE_COMPUTE_OFFSET ;
 int STATE_FRAMEBUFFER ;
 size_t WINED3D_PIPELINE_COMPUTE ;
 unsigned int WINED3D_SHADER_TYPE_COMPUTE ;
 int context_bind_fbo (struct wined3d_context*,int ,int ) ;
 int context_bind_shader_resources (struct wined3d_context*,struct wined3d_state const*,unsigned int) ;
 int context_bind_unordered_access_views (struct wined3d_context*,int ,int ) ;
 int context_invalidate_state (struct wined3d_context*,int ) ;
 int context_load_shader_resources (struct wined3d_context*,struct wined3d_state const*,unsigned int) ;
 int context_load_unordered_access_resources (struct wined3d_context*,int ,int ) ;
 int memset (unsigned int*,int ,int) ;
 int stub1 (struct wined3d_context*,struct wined3d_state const*,unsigned int) ;
 int stub2 (int ,struct wined3d_context*,struct wined3d_state const*) ;
 unsigned int wined3d_bit_scan (unsigned int*) ;

__attribute__((used)) static void context_apply_compute_state(struct wined3d_context *context,
        const struct wined3d_device *device, const struct wined3d_state *state)
{
    const struct StateEntry *state_table = context->state_table;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    unsigned int state_id, i;

    context_load_shader_resources(context, state, 1u << WINED3D_SHADER_TYPE_COMPUTE);
    context_load_unordered_access_resources(context, state->shader[WINED3D_SHADER_TYPE_COMPUTE],
            state->unordered_access_view[WINED3D_PIPELINE_COMPUTE]);

    for (i = 0, state_id = STATE_COMPUTE_OFFSET; i < ARRAY_SIZE(context->dirty_compute_states); ++i)
    {
        unsigned int dirty_mask = context->dirty_compute_states[i];
        while (dirty_mask)
        {
            unsigned int current_state_id = state_id + wined3d_bit_scan(&dirty_mask);
            state_table[current_state_id].apply(context, state, current_state_id);
        }
        state_id += sizeof(*context->dirty_compute_states) * CHAR_BIT;
    }
    memset(context->dirty_compute_states, 0, sizeof(*context->dirty_compute_states));

    if (context->shader_update_mask & (1u << WINED3D_SHADER_TYPE_COMPUTE))
    {
        device->shader_backend->shader_select_compute(device->shader_priv, context, state);
        context->shader_update_mask &= ~(1u << WINED3D_SHADER_TYPE_COMPUTE);
    }

    if (context->update_compute_shader_resource_bindings)
    {
        context_bind_shader_resources(context, state, WINED3D_SHADER_TYPE_COMPUTE);
        context->update_compute_shader_resource_bindings = 0;
        if (gl_info->limits.combined_samplers == gl_info->limits.graphics_samplers)
            context->update_shader_resource_bindings = 1;
    }

    if (context->update_compute_unordered_access_view_bindings)
    {
        context_bind_unordered_access_views(context,
                state->shader[WINED3D_SHADER_TYPE_COMPUTE],
                state->unordered_access_view[WINED3D_PIPELINE_COMPUTE]);
        context->update_compute_unordered_access_view_bindings = 0;
        context->update_unordered_access_view_bindings = 1;
    }
    context_bind_fbo(context, GL_FRAMEBUFFER, 0);
    context_invalidate_state(context, STATE_FRAMEBUFFER);

    context->last_was_blit = FALSE;
}
