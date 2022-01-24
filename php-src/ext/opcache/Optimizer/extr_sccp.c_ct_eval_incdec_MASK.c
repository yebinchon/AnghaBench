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
typedef  scalar_t__ zend_uchar ;

/* Variables and functions */
 int SUCCESS ; 
 scalar_t__ ZEND_POST_INC ; 
 scalar_t__ ZEND_POST_INC_OBJ ; 
 scalar_t__ ZEND_PRE_INC ; 
 scalar_t__ ZEND_PRE_INC_OBJ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC3(zval *result, zend_uchar opcode, zval *op1) {
	FUNC0(result, op1);
	if (opcode == ZEND_PRE_INC
			|| opcode == ZEND_POST_INC
			|| opcode == ZEND_PRE_INC_OBJ
			|| opcode == ZEND_POST_INC_OBJ) {
		FUNC2(result);
	} else {
		FUNC1(result);
	}
	return SUCCESS;
}