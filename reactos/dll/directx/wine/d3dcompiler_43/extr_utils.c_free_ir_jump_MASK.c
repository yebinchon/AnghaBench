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
struct hlsl_ir_jump {scalar_t__ type; int /*<<< orphan*/  return_value; } ;

/* Variables and functions */
 scalar_t__ HLSL_IR_JUMP_RETURN ; 
 int /*<<< orphan*/  FUNC0 (struct hlsl_ir_jump*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hlsl_ir_jump *jump)
{
    if (jump->type == HLSL_IR_JUMP_RETURN)
        FUNC1(jump->return_value);
    FUNC0(jump);
}