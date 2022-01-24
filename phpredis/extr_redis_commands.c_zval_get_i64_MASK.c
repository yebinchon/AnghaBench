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
typedef  int /*<<< orphan*/  zval ;
typedef  scalar_t__ zend_long ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int FAILURE ; 
#define  IS_DOUBLE 129 
#define  IS_LONG 128 
 scalar_t__ IS_STRING ; 
 int SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,double*,int) ; 

__attribute__((used)) static int FUNC6(zval *zv, int64_t *retval) {
    if (FUNC4(zv) == IS_LONG) {
        *retval = (int64_t)FUNC1(zv);
        return SUCCESS;
    } else if (FUNC4(zv) == IS_DOUBLE) {
        *retval = (int64_t)FUNC0(zv);
        return SUCCESS;
    } else if (FUNC4(zv) == IS_STRING) {
        zend_long lval;
        double dval;

        switch (FUNC5(FUNC3(zv), FUNC2(zv), &lval, &dval, 1)) {
            case IS_LONG:
                *retval = (int64_t)lval;
                return SUCCESS;
            case IS_DOUBLE:
                *retval = (int64_t)dval;
                return SUCCESS;
        }
    }

    /* If we make it here we have failed */
    return FAILURE;
}