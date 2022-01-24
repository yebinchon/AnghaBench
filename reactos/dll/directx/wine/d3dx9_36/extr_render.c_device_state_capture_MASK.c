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
struct device_state {unsigned int num_render_targets; int /*<<< orphan*/ * depth_stencil; int /*<<< orphan*/ ** render_targets; int /*<<< orphan*/  viewport; } ;
typedef  int /*<<< orphan*/  IDirect3DDevice9 ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(IDirect3DDevice9 *device, struct device_state *state)
{
    HRESULT hr;
    unsigned int i;

    FUNC3(device, &state->viewport);

    for (i = 0; i < state->num_render_targets; i++)
    {
        hr = FUNC2(device, i, &state->render_targets[i]);
        if (FUNC0(hr)) state->render_targets[i] = NULL;
    }

    hr = FUNC1(device, &state->depth_stencil);
    if (FUNC0(hr)) state->depth_stencil = NULL;
}