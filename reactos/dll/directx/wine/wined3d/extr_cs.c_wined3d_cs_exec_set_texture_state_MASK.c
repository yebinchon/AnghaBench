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
struct wined3d_cs_set_texture_state {size_t stage; size_t state; int /*<<< orphan*/  value; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** texture_states; } ;
struct wined3d_cs {int /*<<< orphan*/  device; TYPE_1__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_texture_state *op = data;

    cs->state.texture_states[op->stage][op->state] = op->value;
    FUNC1(cs->device, FUNC0(op->stage, op->state));
}