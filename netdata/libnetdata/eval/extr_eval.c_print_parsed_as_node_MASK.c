#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int parameters; scalar_t__ isfunction; scalar_t__ print_as; } ;
struct TYPE_4__ {int count; size_t operator; int /*<<< orphan*/ * ops; } ;
typedef  TYPE_1__ EVAL_NODE ;
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
 int EVAL_ERROR_INVALID_NUMBER_OF_OPERANDS ; 
 size_t EVAL_OPERATOR_IF_THEN_ELSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_3__* operators ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline void FUNC4(BUFFER *out, EVAL_NODE *op, int *error) {
    if(FUNC3(op->count != operators[op->operator].parameters)) {
        *error = EVAL_ERROR_INVALID_NUMBER_OF_OPERANDS;
        return;
    }

    if(operators[op->operator].parameters == 1) {

        if(operators[op->operator].print_as)
            FUNC0(out, "%s", operators[op->operator].print_as);

        //if(op->operator == EVAL_OPERATOR_EXPRESSION_OPEN)
        //    buffer_strcat(out, "(");

        FUNC2(out, &op->ops[0], error);

        //if(op->operator == EVAL_OPERATOR_EXPRESSION_OPEN)
        //    buffer_strcat(out, ")");
    }

    else if(operators[op->operator].parameters == 2) {
        FUNC1(out, "(");
        FUNC2(out, &op->ops[0], error);

        if(operators[op->operator].print_as)
            FUNC0(out, " %s ", operators[op->operator].print_as);

        FUNC2(out, &op->ops[1], error);
        FUNC1(out, ")");
    }
    else if(op->operator == EVAL_OPERATOR_IF_THEN_ELSE && operators[op->operator].parameters == 3) {
        FUNC1(out, "(");
        FUNC2(out, &op->ops[0], error);

        if(operators[op->operator].print_as)
            FUNC0(out, " %s ", operators[op->operator].print_as);

        FUNC2(out, &op->ops[1], error);
        FUNC1(out, " : ");
        FUNC2(out, &op->ops[2], error);
        FUNC1(out, ")");
    }

    if(operators[op->operator].isfunction)
        FUNC1(out, ")");
}