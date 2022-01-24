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
struct hlsl_ir_if {int /*<<< orphan*/  else_instrs; int /*<<< orphan*/  then_instrs; int /*<<< orphan*/  condition; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hlsl_ir_if*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hlsl_ir_if *if_node)
{
    FUNC1(if_node->condition);
    FUNC2(if_node->then_instrs);
    FUNC2(if_node->else_instrs);
    FUNC0(if_node);
}