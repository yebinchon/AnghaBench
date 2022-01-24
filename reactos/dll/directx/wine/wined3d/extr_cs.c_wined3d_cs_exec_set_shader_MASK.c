#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wined3d_cs_set_shader {size_t type; int /*<<< orphan*/  shader; } ;
struct TYPE_2__ {int /*<<< orphan*/ * shader; } ;
struct wined3d_cs {int /*<<< orphan*/  device; TYPE_1__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_COMPUTE_SHADER_RESOURCE_BINDING ; 
 int /*<<< orphan*/  STATE_GRAPHICS_SHADER_RESOURCE_BINDING ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t WINED3D_SHADER_TYPE_COMPUTE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_shader *op = data;

    cs->state.shader[op->type] = op->shader;
    FUNC1(cs->device, FUNC0(op->type));
    if (op->type != WINED3D_SHADER_TYPE_COMPUTE)
        FUNC1(cs->device, STATE_GRAPHICS_SHADER_RESOURCE_BINDING);
    else
        FUNC1(cs->device, STATE_COMPUTE_SHADER_RESOURCE_BINDING);
}