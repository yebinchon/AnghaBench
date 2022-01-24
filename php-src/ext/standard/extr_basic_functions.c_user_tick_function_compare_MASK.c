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
typedef  int /*<<< orphan*/  zval ;
struct TYPE_4__ {scalar_t__ calling; int /*<<< orphan*/ * arguments; } ;
typedef  TYPE_1__ user_tick_function_entry ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ IS_ARRAY ; 
 scalar_t__ IS_OBJECT ; 
 scalar_t__ IS_STRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(user_tick_function_entry * tick_fe1, user_tick_function_entry * tick_fe2) /* {{{ */
{
	zval *func1 = &tick_fe1->arguments[0];
	zval *func2 = &tick_fe2->arguments[0];
	int ret;

	if (FUNC0(func1) == IS_STRING && FUNC0(func2) == IS_STRING) {
		ret = FUNC2(func1, func2) == 0;
	} else if (FUNC0(func1) == IS_ARRAY && FUNC0(func2) == IS_ARRAY) {
		ret = FUNC3(func1, func2) == 0;
	} else if (FUNC0(func1) == IS_OBJECT && FUNC0(func2) == IS_OBJECT) {
		ret = FUNC4(func1, func2) == 0;
	} else {
		ret = 0;
	}

	if (ret && tick_fe1->calling) {
		FUNC1(NULL, E_WARNING, "Unable to delete tick function executed at the moment");
		return 0;
	}
	return ret;
}