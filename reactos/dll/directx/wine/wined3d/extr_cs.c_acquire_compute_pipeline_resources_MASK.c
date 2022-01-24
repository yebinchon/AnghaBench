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
struct wined3d_state {int /*<<< orphan*/ * unordered_access_view; int /*<<< orphan*/ * shader; } ;

/* Variables and functions */
 size_t WINED3D_PIPELINE_COMPUTE ; 
 unsigned int WINED3D_SHADER_TYPE_COMPUTE ; 
 int /*<<< orphan*/  FUNC0 (struct wined3d_state const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(const struct wined3d_state *state)
{
    FUNC0(state, 1u << WINED3D_SHADER_TYPE_COMPUTE);
    FUNC1(state->shader[WINED3D_SHADER_TYPE_COMPUTE],
            state->unordered_access_view[WINED3D_PIPELINE_COMPUTE]);
}