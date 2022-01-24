#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ calculated_number ;
struct TYPE_3__ {int /*<<< orphan*/ * ops; } ;
typedef  TYPE_1__ EVAL_NODE ;
typedef  int /*<<< orphan*/  EVAL_EXPRESSION ;

/* Variables and functions */
 scalar_t__ INFINITY ; 
 scalar_t__ NAN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

calculated_number FUNC3(EVAL_EXPRESSION *exp, EVAL_NODE *op, int *error) {
    calculated_number n1 = FUNC0(exp, &op->ops[0], error);
    calculated_number n2 = FUNC0(exp, &op->ops[1], error);
    if(FUNC2(n1) || FUNC2(n2)) return NAN;
    if(FUNC1(n1) || FUNC1(n2)) return INFINITY;
    return n1 + n2;
}