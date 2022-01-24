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
struct wined3d_state {int dummy; } ;
struct wined3d_context {int dummy; } ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int WINED3D_HIGHEST_TEXTURE_STATE ; 
 int /*<<< orphan*/  WINED3D_TSS_ALPHA_OP ; 
 int /*<<< orphan*/  WINED3D_TSS_COLOR_OP ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context*,struct wined3d_state const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_context*,int) ; 

__attribute__((used)) static void FUNC4(struct wined3d_context *context, const struct wined3d_state *state, DWORD state_id)
{
    DWORD stage = (state_id - FUNC0(0, 0)) / (WINED3D_HIGHEST_TEXTURE_STATE + 1);

    FUNC1("Setting result arg for stage %u.\n", stage);

    if (!FUNC3(context, FUNC0(stage, WINED3D_TSS_COLOR_OP)))
    {
        FUNC2(context, state, FUNC0(stage, WINED3D_TSS_COLOR_OP));
    }
    if (!FUNC3(context, FUNC0(stage, WINED3D_TSS_ALPHA_OP)))
    {
        FUNC2(context, state, FUNC0(stage, WINED3D_TSS_ALPHA_OP));
    }
}