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
typedef  int /*<<< orphan*/  zend_constant ;

/* Variables and functions */
 int CONST_PERSISTENT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ZEND_HASH_APPLY_KEEP ; 
 int ZEND_HASH_APPLY_REMOVE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(zval *zv) /* {{{ */
{
	zend_constant *c = FUNC1(zv);
	return (FUNC0(c) & CONST_PERSISTENT) ? ZEND_HASH_APPLY_KEEP : ZEND_HASH_APPLY_REMOVE;
}