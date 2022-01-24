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
struct hlsl_ir_assignment {scalar_t__ writemask; int /*<<< orphan*/  rhs; int /*<<< orphan*/  lhs; } ;

/* Variables and functions */
 scalar_t__ BWRITERSP_WRITEMASK_ALL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(const struct hlsl_ir_assignment *assign)
{
    FUNC0("= (");
    FUNC1(assign->lhs);
    if (assign->writemask != BWRITERSP_WRITEMASK_ALL)
        FUNC0("%s", FUNC2(assign->writemask));
    FUNC0(" ");
    FUNC1(assign->rhs);
    FUNC0(")");
}