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
struct wined3d_context {int dummy; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t WINED3D_RS_SRGBWRITEENABLE ; 

__attribute__((used)) static void FUNC1(struct wined3d_context *context, const struct wined3d_state *state, DWORD state_id)
{
    if (state->render_states[WINED3D_RS_SRGBWRITEENABLE])
        FUNC0("sRGB writes are not supported by this fragment pipe.\n");
}