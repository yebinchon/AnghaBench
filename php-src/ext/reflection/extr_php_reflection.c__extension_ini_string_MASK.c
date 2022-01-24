#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int module_number; int modifiable; scalar_t__ orig_value; scalar_t__ modified; scalar_t__ value; scalar_t__ name; } ;
typedef  TYPE_1__ zend_ini_entry ;
typedef  int /*<<< orphan*/  smart_str ;

/* Variables and functions */
 int ZEND_INI_ALL ; 
 int ZEND_INI_PERDIR ; 
 int ZEND_INI_SYSTEM ; 
 int ZEND_INI_USER ; 
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC3(zend_ini_entry *ini_entry, smart_str *str, char *indent, int number) /* {{{ */
{
	char *comma = "";

	if (number == ini_entry->module_number) {
		FUNC1(str, "    %sEntry [ %s <", indent, FUNC0(ini_entry->name));
		if (ini_entry->modifiable == ZEND_INI_ALL) {
			FUNC2(str, "ALL");
		} else {
			if (ini_entry->modifiable & ZEND_INI_USER) {
				FUNC2(str, "USER");
				comma = ",";
			}
			if (ini_entry->modifiable & ZEND_INI_PERDIR) {
				FUNC1(str, "%sPERDIR", comma);
				comma = ",";
			}
			if (ini_entry->modifiable & ZEND_INI_SYSTEM) {
				FUNC1(str, "%sSYSTEM", comma);
			}
		}

		FUNC2(str, "> ]\n");
		FUNC1(str, "    %s  Current = '%s'\n", indent, ini_entry->value ? FUNC0(ini_entry->value) : "");
		if (ini_entry->modified) {
			FUNC1(str, "    %s  Default = '%s'\n", indent, ini_entry->orig_value ? FUNC0(ini_entry->orig_value) : "");
		}
		FUNC1(str, "    %s}\n", indent);
	}
}