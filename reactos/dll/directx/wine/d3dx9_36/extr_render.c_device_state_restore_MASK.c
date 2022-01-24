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
struct device_state {unsigned int num_render_targets; int /*<<< orphan*/  viewport; int /*<<< orphan*/ * depth_stencil; int /*<<< orphan*/ ** render_targets; } ;
typedef  int /*<<< orphan*/  IDirect3DDevice9 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(IDirect3DDevice9 *device, struct device_state *state)
{
    unsigned int i;

    for (i = 0; i < state->num_render_targets; i++)
    {
        FUNC1(device, i, state->render_targets[i]);
        if (state->render_targets[i])
            FUNC3(state->render_targets[i]);
        state->render_targets[i] = NULL;
    }

    FUNC0(device, state->depth_stencil);
    if (state->depth_stencil)
    {
        FUNC3(state->depth_stencil);
        state->depth_stencil = NULL;
    }

    FUNC2(device, &state->viewport);
}