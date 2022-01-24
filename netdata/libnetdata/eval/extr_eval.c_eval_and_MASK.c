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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

calculated_number FUNC2(EVAL_EXPRESSION *exp, EVAL_NODE *op, int *error) {
    return FUNC1(FUNC0(exp, &op->ops[0], error)) && FUNC1(FUNC0(exp, &op->ops[1], error));
}