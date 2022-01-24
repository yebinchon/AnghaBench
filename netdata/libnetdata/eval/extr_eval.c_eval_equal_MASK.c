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
typedef  int calculated_number ;
struct TYPE_3__ {int /*<<< orphan*/ * ops; } ;
typedef  TYPE_1__ EVAL_NODE ;
typedef  int /*<<< orphan*/  EVAL_EXPRESSION ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 

calculated_number FUNC4(EVAL_EXPRESSION *exp, EVAL_NODE *op, int *error) {
    calculated_number n1 = FUNC1(exp, &op->ops[0], error);
    calculated_number n2 = FUNC1(exp, &op->ops[1], error);
    if(FUNC3(n1) && FUNC3(n2)) return 1;
    if(FUNC2(n1) && FUNC2(n2)) return 1;
    if(FUNC3(n1) || FUNC3(n2)) return 0;
    if(FUNC2(n1) || FUNC2(n2)) return 0;
    return FUNC0(n1, n2);
}