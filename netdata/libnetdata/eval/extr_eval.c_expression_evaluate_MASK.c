#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ error; int /*<<< orphan*/  error_msg; int /*<<< orphan*/  result; scalar_t__ nodes; } ;
typedef  int /*<<< orphan*/  EVAL_NODE ;
typedef  TYPE_1__ EVAL_EXPRESSION ;

/* Variables and functions */
 scalar_t__ EVAL_ERROR_OK ; 
 scalar_t__ EVAL_ERROR_UNKNOWN_VARIABLE ; 
 scalar_t__ EVAL_ERROR_VALUE_IS_INFINITE ; 
 scalar_t__ EVAL_ERROR_VALUE_IS_NAN ; 
 int /*<<< orphan*/  NAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(EVAL_EXPRESSION *expression) {
    expression->error = EVAL_ERROR_OK;

    FUNC0(expression->error_msg);
    expression->result = FUNC4(expression, (EVAL_NODE *)expression->nodes, &expression->error);

    if(FUNC8(FUNC7(expression->result))) {
        if(expression->error == EVAL_ERROR_OK)
            expression->error = EVAL_ERROR_VALUE_IS_NAN;
    }
    else if(FUNC8(FUNC6(expression->result))) {
        if(expression->error == EVAL_ERROR_OK)
            expression->error = EVAL_ERROR_VALUE_IS_INFINITE;
    }
    else if(FUNC8(expression->error == EVAL_ERROR_UNKNOWN_VARIABLE)) {
        // although there is an unknown variable
        // the expression was evaluated successfully
        expression->error = EVAL_ERROR_OK;
    }

    if(expression->error != EVAL_ERROR_OK) {
        expression->result = NAN;

        if(FUNC3(expression->error_msg))
            FUNC2(expression->error_msg, "; ");

        FUNC1(expression->error_msg, "failed to evaluate expression with error %d (%s)", expression->error, FUNC5(expression->error));
        return 0;
    }

    return 1;
}