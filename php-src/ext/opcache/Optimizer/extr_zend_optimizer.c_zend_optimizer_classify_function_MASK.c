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
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZEND_FUNC_INDIRECT_VAR_ACCESS ; 
 int /*<<< orphan*/  ZEND_FUNC_VARARG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 

uint32_t FUNC1(zend_string *name, uint32_t num_args) {
	if (FUNC0(name, "extract")) {
		return ZEND_FUNC_INDIRECT_VAR_ACCESS;
	} else if (FUNC0(name, "compact")) {
		return ZEND_FUNC_INDIRECT_VAR_ACCESS;
	} else if (FUNC0(name, "get_defined_vars")) {
		return ZEND_FUNC_INDIRECT_VAR_ACCESS;
	} else if (FUNC0(name, "func_num_args")) {
		return ZEND_FUNC_VARARG;
	} else if (FUNC0(name, "func_get_arg")) {
		return ZEND_FUNC_VARARG;
	} else if (FUNC0(name, "func_get_args")) {
		return ZEND_FUNC_VARARG;
	} else {
		return 0;
	}
}