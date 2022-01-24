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
struct wined3d_shader_instruction {scalar_t__ handler_idx; scalar_t__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ WINED3DSIH_BREAKP ; 
 scalar_t__ WINED3DSIH_IF ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct wined3d_shader_instruction *ins)
{
    if (ins->handler_idx == WINED3DSIH_BREAKP || ins->handler_idx == WINED3DSIH_IF)
    {
        if (ins->flags)
        {
            FUNC0("Ignoring unexpected instruction flags %#x for %s.\n",
                    ins->flags, FUNC1(ins->handler_idx));
            ins->flags = 0;
        }
    }
}