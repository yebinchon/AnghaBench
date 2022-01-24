#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  parameters; } ;
struct TYPE_12__ {unsigned char operator; int precedence; int count; TYPE_1__* ops; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_2__* expression; } ;
typedef  TYPE_2__ EVAL_NODE ;

/* Variables and functions */
 int EVAL_ERROR_IF_THEN_ELSE_MISSING_ELSE ; 
 int EVAL_ERROR_MISSING_OPERATOR ; 
 unsigned char EVAL_OPERATOR_IF_THEN_ELSE ; 
 unsigned char EVAL_OPERATOR_NOP ; 
 scalar_t__ EVAL_VALUE_EXPRESSION ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,TYPE_2__*) ; 
 TYPE_6__* operators ; 
 TYPE_2__* FUNC3 (char const**,int*) ; 
 unsigned char FUNC4 (char const**,int*) ; 
 int /*<<< orphan*/  FUNC5 (char const**) ; 

__attribute__((used)) static inline EVAL_NODE *FUNC6(const char **string, int *error, EVAL_NODE *op1) {
    EVAL_NODE *op2 = NULL;
    unsigned char operator;
    int precedence;

    operator = FUNC4(string, &precedence);
    FUNC5(string);

    if(operator != EVAL_OPERATOR_NOP) {
        op2 = FUNC3(string, error);
        if(!op2) {
            // error is already reported
            FUNC1(op1);
            return NULL;
        }

        EVAL_NODE *op = FUNC0(operators[operator].parameters);
        op->operator = operator;
        op->precedence = precedence;

        if(operator == EVAL_OPERATOR_IF_THEN_ELSE && op->count == 3) {
            FUNC5(string);

            if(**string != ':') {
                FUNC1(op);
                FUNC1(op1);
                FUNC1(op2);
                *error = EVAL_ERROR_IF_THEN_ELSE_MISSING_ELSE;
                return NULL;
            }
            (*string)++;

            FUNC5(string);

            EVAL_NODE *op3 = FUNC3(string, error);
            if(!op3) {
                FUNC1(op);
                FUNC1(op1);
                FUNC1(op2);
                // error is already reported
                return NULL;
            }

            FUNC2(op, 2, op3);
        }

        FUNC2(op, 1, op2);

        // precedence processing
        // if this operator has a higher precedence compared to its next
        // put the next operator on top of us (top = evaluated later)
        // function recursion does the rest...
        if(op->precedence > op1->precedence && op1->count == 2 && op1->operator != '(' && op1->ops[1].type == EVAL_VALUE_EXPRESSION) {
            FUNC2(op, 0, op1->ops[1].expression);
            op1->ops[1].expression = op;
            op = op1;
        }
        else
            FUNC2(op, 0, op1);

        return FUNC6(string, error, op);
    }
    else if(**string == ')') {
        ;
    }
    else if(**string) {
        FUNC1(op1);
        op1 = NULL;
        *error = EVAL_ERROR_MISSING_OPERATOR;
    }

    return op1;
}