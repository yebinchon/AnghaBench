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

/* Variables and functions */
 scalar_t__ IS_INDIRECT ; 
 scalar_t__ IS_OBJECT ; 
 int ZEND_HASH_APPLY_KEEP ; 
 int ZEND_HASH_APPLY_REMOVE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(zval *zv) /* {{{ */
{
	if (FUNC2(zv) == IS_INDIRECT) {
		zv = FUNC0(zv);
	}
	if (FUNC2(zv) == IS_OBJECT && FUNC1(zv) == 1) {
		return ZEND_HASH_APPLY_REMOVE;
	} else {
		return ZEND_HASH_APPLY_KEEP;
	}
}