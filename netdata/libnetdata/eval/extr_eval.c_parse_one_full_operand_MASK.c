#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  calculated_number ;
struct TYPE_11__ {void* operator; void* precedence; } ;
typedef  TYPE_1__ EVAL_NODE ;

/* Variables and functions */
 int EVAL_ERROR_MISSING_CLOSE_SUBEXPRESSION ; 
 int EVAL_ERROR_MISSING_OPERAND ; 
 int EVAL_ERROR_OK ; 
 int EVAL_ERROR_UNKNOWN_OPERAND ; 
 int /*<<< orphan*/  EVAL_MAX_VARIABLE_NAME_LENGTH ; 
 void* EVAL_OPERATOR_ABS ; 
 void* EVAL_OPERATOR_EXPRESSION_OPEN ; 
 void* EVAL_OPERATOR_NOP ; 
 void* EVAL_OPERATOR_NOT ; 
 void* EVAL_OPERATOR_SIGN_MINUS ; 
 void* EVAL_OPERATOR_SIGN_PLUS ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC5 (void*) ; 
 scalar_t__ FUNC6 (char const**) ; 
 int /*<<< orphan*/  FUNC7 (char const**) ; 
 scalar_t__ FUNC8 (char const**,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (char const**,int*) ; 
 scalar_t__ FUNC10 (char const**) ; 
 TYPE_1__* FUNC11 (char const**,void*,int*) ; 
 scalar_t__ FUNC12 (char const**) ; 
 scalar_t__ FUNC13 (char const**) ; 
 scalar_t__ FUNC14 (char const**) ; 
 scalar_t__ FUNC15 (char const**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char const**) ; 

__attribute__((used)) static inline EVAL_NODE *FUNC17(const char **string, int *error) {
    char variable_buffer[EVAL_MAX_VARIABLE_NAME_LENGTH + 1];
    EVAL_NODE *op1 = NULL;
    calculated_number number;

    *error = EVAL_ERROR_OK;

    FUNC16(string);
    if(!(**string)) {
        *error = EVAL_ERROR_MISSING_OPERAND;
        return NULL;
    }

    if(FUNC12(string)) {
        op1 = FUNC11(string, EVAL_OPERATOR_NOT, error);
        op1->precedence = FUNC5(EVAL_OPERATOR_NOT);
    }
    else if(FUNC14(string)) {
        op1 = FUNC11(string, EVAL_OPERATOR_SIGN_PLUS, error);
        op1->precedence = FUNC5(EVAL_OPERATOR_SIGN_PLUS);
    }
    else if(FUNC10(string)) {
        op1 = FUNC11(string, EVAL_OPERATOR_SIGN_MINUS, error);
        op1->precedence = FUNC5(EVAL_OPERATOR_SIGN_MINUS);
    }
    else if(FUNC6(string)) {
        op1 = FUNC11(string, EVAL_OPERATOR_ABS, error);
        op1->precedence = FUNC5(EVAL_OPERATOR_ABS);
    }
    else if(FUNC13(string)) {
        EVAL_NODE *sub = FUNC9(string, error);
        if(sub) {
            op1 = FUNC0(1);
            op1->operator = EVAL_OPERATOR_EXPRESSION_OPEN;
            op1->precedence = FUNC5(EVAL_OPERATOR_EXPRESSION_OPEN);
            FUNC3(op1, 0, sub);
            if(!FUNC7(string)) {
                *error = EVAL_ERROR_MISSING_CLOSE_SUBEXPRESSION;
                FUNC1(op1);
                return NULL;
            }
        }
    }
    else if(FUNC15(string, variable_buffer, EVAL_MAX_VARIABLE_NAME_LENGTH)) {
        op1 = FUNC0(1);
        op1->operator = EVAL_OPERATOR_NOP;
        FUNC4(op1, 0, variable_buffer);
    }
    else if(FUNC8(string, &number)) {
        op1 = FUNC0(1);
        op1->operator = EVAL_OPERATOR_NOP;
        FUNC2(op1, 0, number);
    }
    else if(**string)
        *error = EVAL_ERROR_UNKNOWN_OPERAND;
    else
        *error = EVAL_ERROR_MISSING_OPERAND;

    return op1;
}