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
struct key_value_s {char* key; char* value; } ;
typedef  char* PG ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 scalar_t__ IS_TRUE ; 
 int /*<<< orphan*/  MODULE_PERSISTENT ; 
 int /*<<< orphan*/  PHP_INI_STAGE_ACTIVATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  zend_disable_class ; 
 int /*<<< orphan*/  zend_disable_function ; 

int FUNC7(struct key_value_s *kv, int mode) /* {{{ */
{

	char *name = kv->key;
	char *value = kv->value;
	int name_len = FUNC6(name);
	int value_len = FUNC6(value);

	if (!FUNC4(name, "extension") && *value) {
		zval zv;
		FUNC3(value, MODULE_PERSISTENT, &zv, 1);
		return FUNC0(zv) == IS_TRUE;
	}

	if (FUNC2(name, name_len, value, value_len, mode, PHP_INI_STAGE_ACTIVATE) == FAILURE) {
		return -1;
	}

	if (!FUNC4(name, "disable_functions") && *value) {
		char *v = FUNC5(value);
		PG(disable_functions) = v;
		FUNC1(v, zend_disable_function);
		return 1;
	}

	if (!FUNC4(name, "disable_classes") && *value) {
		char *v = FUNC5(value);
		PG(disable_classes) = v;
		FUNC1(v, zend_disable_class);
		return 1;
	}

	return 1;
}