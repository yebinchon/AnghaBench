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
struct hlsl_ir_expr {scalar_t__* operands; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct hlsl_ir_expr const*) ; 

__attribute__((used)) static void FUNC3(const struct hlsl_ir_expr *expr)
{
    unsigned int i;

    FUNC0("%s (", FUNC2(expr));
    for (i = 0; i < 3 && expr->operands[i]; ++i)
    {
        FUNC1(expr->operands[i]);
        FUNC0(" ");
    }
    FUNC0(")");
}