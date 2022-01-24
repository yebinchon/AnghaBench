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
typedef  int uint32_t ;

/* Variables and functions */
 int ZEND_ACC_PRIVATE ; 
 int ZEND_ACC_PROTECTED ; 
 int ZEND_ACC_PUBLIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

char *FUNC1(uint32_t fn_flags) /* {{{ */
{
	if (fn_flags & ZEND_ACC_PUBLIC) {
		return "public";
	} else if (fn_flags & ZEND_ACC_PRIVATE) {
		return "private";
	} else {
		FUNC0(fn_flags & ZEND_ACC_PROTECTED);
		return "protected";
	}
}