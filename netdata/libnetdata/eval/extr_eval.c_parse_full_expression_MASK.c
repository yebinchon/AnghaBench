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
typedef  int /*<<< orphan*/  EVAL_NODE ;

/* Variables and functions */
 int EVAL_ERROR_MISSING_OPERAND ; 
 int /*<<< orphan*/ * FUNC0 (char const**,int*) ; 
 int /*<<< orphan*/ * FUNC1 (char const**,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline EVAL_NODE *FUNC2(const char **string, int *error) {
    EVAL_NODE *op1 = FUNC0(string, error);
    if(!op1) {
        *error = EVAL_ERROR_MISSING_OPERAND;
        return NULL;
    }

    return FUNC1(string, error, op1);
}