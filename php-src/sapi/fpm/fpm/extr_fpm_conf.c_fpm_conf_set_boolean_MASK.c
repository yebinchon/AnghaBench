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

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static char *FUNC2(zval *value, void **config, intptr_t offset) /* {{{ */
{
	char *val = FUNC0(value);
	long value_y = !FUNC1(val, "1");
	long value_n = !FUNC1(val, "");

	if (!value_y && !value_n) {
		return "invalid boolean value";
	}

	* (int *) ((char *) *config + offset) = value_y ? 1 : 0;
	return NULL;
}