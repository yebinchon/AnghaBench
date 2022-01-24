#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_2__ {scalar_t__ (* input_filter ) (int,char*,char**,int /*<<< orphan*/ ,size_t*) ;} ;

/* Variables and functions */
 int PARSE_ENV ; 
 int PARSE_SERVER ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 size_t TRACK_VARS_ENV ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  http_globals ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t,int /*<<< orphan*/ *) ; 
 TYPE_1__ sapi_module ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int,char*,char**,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static void FUNC6(char *var, unsigned int var_len, char *val, unsigned int val_len, void *arg)
{
	zval *array_ptr = (zval*)arg;
	int filter_arg = (FUNC2(array_ptr) == FUNC1(FUNC0(http_globals)[TRACK_VARS_ENV]))?PARSE_ENV:PARSE_SERVER;
	size_t new_val_len;

	if (sapi_module.input_filter(filter_arg, var, &val, FUNC4(val), &new_val_len)) {
		FUNC3(var, val, new_val_len, array_ptr);
	}
}