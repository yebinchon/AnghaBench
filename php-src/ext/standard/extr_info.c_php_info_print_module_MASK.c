#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_5__ {int /*<<< orphan*/  name; scalar_t__ version; int /*<<< orphan*/  (* info_func ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ zend_module_entry ;
struct TYPE_6__ {int /*<<< orphan*/  phpinfo_as_text; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ sapi_module ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

void FUNC13(zend_module_entry *zend_module) /* {{{ */
{
	if (zend_module->info_func || zend_module->version) {
		if (!sapi_module.phpinfo_as_text) {
			zend_string *url_name = FUNC10(zend_module->name, FUNC11(zend_module->name));

			FUNC9(FUNC2(url_name), FUNC1(url_name));
			FUNC8("<h2><a name=\"module_%s\">%s</a></h2>\n", FUNC2(url_name), zend_module->name);

			FUNC3(url_name);
		} else {
			FUNC7();
			FUNC5(1, zend_module->name);
			FUNC4();
		}
		if (zend_module->info_func) {
			zend_module->info_func(zend_module);
		} else {
			FUNC7();
			FUNC6(2, "Version", zend_module->version);
			FUNC4();
			FUNC0();
		}
	} else {
		if (!sapi_module.phpinfo_as_text) {
			FUNC8("<tr><td class=\"v\">%s</td></tr>\n", zend_module->name);
		} else {
			FUNC8("%s\n", zend_module->name);
		}
	}
}