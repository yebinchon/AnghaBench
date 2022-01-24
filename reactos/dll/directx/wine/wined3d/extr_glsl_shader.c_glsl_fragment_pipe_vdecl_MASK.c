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
struct wined3d_state {int dummy; } ;
struct wined3d_context {unsigned int shader_update_mask; TYPE_2__* gl_info; } ;
struct TYPE_3__ {scalar_t__ glsl_varyings; } ;
struct TYPE_4__ {TYPE_1__ limits; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WINED3D_RS_FOGENABLE ; 
 unsigned int WINED3D_SHADER_TYPE_PIXEL ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_context*,struct wined3d_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(struct wined3d_context *context,
        const struct wined3d_state *state, DWORD state_id)
{
    /* Because of settings->texcoords_initialized and args->texcoords_initialized. */
    if (context->gl_info->limits.glsl_varyings < FUNC3(context->gl_info))
        context->shader_update_mask |= 1u << WINED3D_SHADER_TYPE_PIXEL;

    if (!FUNC2(context, FUNC0(WINED3D_RS_FOGENABLE)))
        FUNC1(context, state, state_id);
}