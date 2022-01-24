#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wined3d_state {int /*<<< orphan*/ * unordered_access_view; int /*<<< orphan*/ * shader; } ;
struct TYPE_4__ {scalar_t__ combined_samplers; scalar_t__ graphics_samplers; } ;
struct wined3d_gl_info {TYPE_2__ limits; } ;
struct wined3d_device {int /*<<< orphan*/  shader_priv; TYPE_1__* shader_backend; } ;
struct wined3d_context {unsigned int* dirty_compute_states; unsigned int shader_update_mask; int update_shader_resource_bindings; int update_unordered_access_view_bindings; int /*<<< orphan*/  last_was_blit; scalar_t__ update_compute_unordered_access_view_bindings; scalar_t__ update_compute_shader_resource_bindings; struct wined3d_gl_info* gl_info; struct StateEntry* state_table; } ;
struct StateEntry {int /*<<< orphan*/  (* apply ) (struct wined3d_context*,struct wined3d_state const*,unsigned int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* shader_select_compute ) (int /*<<< orphan*/ ,struct wined3d_context*,struct wined3d_state const*) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int*) ; 
 int CHAR_BIT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GL_FRAMEBUFFER ; 
 unsigned int STATE_COMPUTE_OFFSET ; 
 int /*<<< orphan*/  STATE_FRAMEBUFFER ; 
 size_t WINED3D_PIPELINE_COMPUTE ; 
 unsigned int WINED3D_SHADER_TYPE_COMPUTE ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context*,struct wined3d_state const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_context*,struct wined3d_state const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_context*,struct wined3d_state const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct wined3d_context*,struct wined3d_state const*) ; 
 unsigned int FUNC10 (unsigned int*) ; 

__attribute__((used)) static void FUNC11(struct wined3d_context *context,
        const struct wined3d_device *device, const struct wined3d_state *state)
{
    const struct StateEntry *state_table = context->state_table;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    unsigned int state_id, i;

    FUNC5(context, state, 1u << WINED3D_SHADER_TYPE_COMPUTE);
    FUNC6(context, state->shader[WINED3D_SHADER_TYPE_COMPUTE],
            state->unordered_access_view[WINED3D_PIPELINE_COMPUTE]);

    for (i = 0, state_id = STATE_COMPUTE_OFFSET; i < FUNC0(context->dirty_compute_states); ++i)
    {
        unsigned int dirty_mask = context->dirty_compute_states[i];
        while (dirty_mask)
        {
            unsigned int current_state_id = state_id + FUNC10(&dirty_mask);
            state_table[current_state_id].apply(context, state, current_state_id);
        }
        state_id += sizeof(*context->dirty_compute_states) * CHAR_BIT;
    }
    FUNC7(context->dirty_compute_states, 0, sizeof(*context->dirty_compute_states));

    if (context->shader_update_mask & (1u << WINED3D_SHADER_TYPE_COMPUTE))
    {
        device->shader_backend->shader_select_compute(device->shader_priv, context, state);
        context->shader_update_mask &= ~(1u << WINED3D_SHADER_TYPE_COMPUTE);
    }

    if (context->update_compute_shader_resource_bindings)
    {
        FUNC2(context, state, WINED3D_SHADER_TYPE_COMPUTE);
        context->update_compute_shader_resource_bindings = 0;
        if (gl_info->limits.combined_samplers == gl_info->limits.graphics_samplers)
            context->update_shader_resource_bindings = 1;
    }

    if (context->update_compute_unordered_access_view_bindings)
    {
        FUNC3(context,
                state->shader[WINED3D_SHADER_TYPE_COMPUTE],
                state->unordered_access_view[WINED3D_PIPELINE_COMPUTE]);
        context->update_compute_unordered_access_view_bindings = 0;
        context->update_unordered_access_view_bindings = 1;
    }

    /* Updates to currently bound render targets aren't necessarily coherent
     * between the graphics and compute pipelines. Unbind any currently bound
     * FBO here to ensure preceding updates to its attachments by the graphics
     * pipeline are visible to the compute pipeline.
     *
     * Without this, the bloom effect in Nier:Automata is too bright on the
     * Mesa radeonsi driver, and presumably on other Mesa based drivers. */
    FUNC1(context, GL_FRAMEBUFFER, 0);
    FUNC4(context, STATE_FRAMEBUFFER);

    context->last_was_blit = FALSE;
}