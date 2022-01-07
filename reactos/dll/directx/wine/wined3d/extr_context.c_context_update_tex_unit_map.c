
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ graphics_samplers; } ;
struct wined3d_gl_info {TYPE_1__ limits; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
typedef scalar_t__ BOOL ;


 scalar_t__ MAX_COMBINED_SAMPLERS ;
 int context_map_fixed_function_samplers (struct wined3d_context*,struct wined3d_state const*) ;
 int context_map_psamplers (struct wined3d_context*,struct wined3d_state const*) ;
 int context_map_vsamplers (struct wined3d_context*,scalar_t__,struct wined3d_state const*) ;
 int context_update_fixed_function_usage_map (struct wined3d_context*,struct wined3d_state const*) ;
 scalar_t__ use_ps (struct wined3d_state const*) ;
 scalar_t__ use_vs (struct wined3d_state const*) ;

__attribute__((used)) static void context_update_tex_unit_map(struct wined3d_context *context, const struct wined3d_state *state)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    BOOL vs = use_vs(state);
    BOOL ps = use_ps(state);

    if (!ps)
        context_update_fixed_function_usage_map(context, state);






    if (gl_info->limits.graphics_samplers >= MAX_COMBINED_SAMPLERS)
        return;

    if (ps)
        context_map_psamplers(context, state);
    else
        context_map_fixed_function_samplers(context, state);

    if (vs)
        context_map_vsamplers(context, ps, state);
}
