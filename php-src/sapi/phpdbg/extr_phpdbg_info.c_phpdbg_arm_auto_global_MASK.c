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
typedef  int /*<<< orphan*/  zval ;
struct TYPE_3__ {int /*<<< orphan*/  name; scalar_t__ (* auto_global_callback ) (int /*<<< orphan*/ ) ;scalar_t__ armed; } ;
typedef  TYPE_1__ zend_auto_global ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PHPDBG_IN_SIGNAL_HANDLER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(zval *ptrzv) {
	zend_auto_global *auto_global = FUNC3(ptrzv);

	if (auto_global->armed) {
		if (FUNC0(flags) & PHPDBG_IN_SIGNAL_HANDLER) {
			FUNC4("variableinfo", "unreachable=\"%.*s\"", "Cannot show information about superglobal variable %.*s", (int) FUNC1(auto_global->name), FUNC2(auto_global->name));
		} else {
			auto_global->armed = auto_global->auto_global_callback(auto_global->name);
		}
	}

	return 0;
}