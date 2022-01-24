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
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_4__ {scalar_t__ (* on_modify ) (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int modifiable; int /*<<< orphan*/ * value; int /*<<< orphan*/  mh_arg3; int /*<<< orphan*/  mh_arg2; int /*<<< orphan*/  mh_arg1; } ;
typedef  TYPE_1__ zend_ini_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FAILURE ; 
 scalar_t__ SUCCESS ; 
 int ZEND_INI_SYSTEM ; 
 int /*<<< orphan*/  ini_directives ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(char *name, int name_length, char *new_value, int new_value_length, int mode, int stage) /* {{{ */
{
	zend_ini_entry *ini_entry;
	zend_string *duplicate;

	if ((ini_entry = FUNC2(FUNC0(ini_directives), name, name_length)) == NULL) {
		return FAILURE;
	}

	duplicate = FUNC3(new_value, new_value_length, 1);

	if (!ini_entry->on_modify
			|| ini_entry->on_modify(ini_entry, duplicate,
				ini_entry->mh_arg1, ini_entry->mh_arg2, ini_entry->mh_arg3, stage) == SUCCESS) {
		ini_entry->value = duplicate;
		/* when mode == ZEND_INI_USER keep unchanged to allow ZEND_INI_PERDIR (.user.ini) */
		if (mode == ZEND_INI_SYSTEM) {
			ini_entry->modifiable = mode;
		}
	} else {
		FUNC4(duplicate, 1);
	}

	return SUCCESS;
}