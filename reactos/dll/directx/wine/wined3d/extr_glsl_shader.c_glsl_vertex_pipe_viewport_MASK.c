#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wined3d_state {scalar_t__* render_states; } ;
struct wined3d_context {int /*<<< orphan*/  constant_update_mask; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t WINED3D_RS_POINTSCALEENABLE ; 
 int /*<<< orphan*/  WINED3D_SHADER_CONST_POS_FIXUP ; 
 int /*<<< orphan*/  WINED3D_SHADER_CONST_VS_POINTSIZE ; 
 int /*<<< orphan*/  WINED3D_TS_PROJECTION ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context*,struct wined3d_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct wined3d_context *context,
        const struct wined3d_state *state, DWORD state_id)
{
    if (!FUNC3(context, FUNC1(WINED3D_TS_PROJECTION)))
        FUNC2(context, state, FUNC1(WINED3D_TS_PROJECTION));
    if (!FUNC3(context, FUNC0(WINED3D_RS_POINTSCALEENABLE))
            && state->render_states[WINED3D_RS_POINTSCALEENABLE])
        context->constant_update_mask |= WINED3D_SHADER_CONST_VS_POINTSIZE;
    context->constant_update_mask |= WINED3D_SHADER_CONST_POS_FIXUP;
}