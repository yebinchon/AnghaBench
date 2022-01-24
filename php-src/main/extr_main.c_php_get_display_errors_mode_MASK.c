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

/* Variables and functions */
 int PHP_DISPLAY_ERRORS_STDERR ; 
 int PHP_DISPLAY_ERRORS_STDOUT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static int FUNC2(char *value, size_t value_length)
{
	int mode;

	if (!value) {
		return PHP_DISPLAY_ERRORS_STDOUT;
	}

	if (value_length == 2 && !FUNC1("on", value)) {
		mode = PHP_DISPLAY_ERRORS_STDOUT;
	} else if (value_length == 3 && !FUNC1("yes", value)) {
		mode = PHP_DISPLAY_ERRORS_STDOUT;
	} else if (value_length == 4 && !FUNC1("true", value)) {
		mode = PHP_DISPLAY_ERRORS_STDOUT;
	} else if (value_length == 6 && !FUNC1(value, "stderr")) {
		mode = PHP_DISPLAY_ERRORS_STDERR;
	} else if (value_length == 6 && !FUNC1(value, "stdout")) {
		mode = PHP_DISPLAY_ERRORS_STDOUT;
	} else {
		FUNC0(mode, value);
		if (mode && mode != PHP_DISPLAY_ERRORS_STDOUT && mode != PHP_DISPLAY_ERRORS_STDERR) {
			mode = PHP_DISPLAY_ERRORS_STDOUT;
		}
	}

	return mode;
}