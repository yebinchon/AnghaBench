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
typedef  int /*<<< orphan*/  zend_long ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTICE ; 
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ IS_STRING ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(zval *options, zend_long *remove_all_path, char **remove_path, size_t *remove_path_len, char **add_path, size_t *add_path_len) /* {{{ */
{
	zval *option;
	if ((option = FUNC5(FUNC0(options), "remove_all_path", sizeof("remove_all_path") - 1)) != NULL) {
		*remove_all_path = FUNC6(option);
	}

	/* If I add more options, it would make sense to create a nice static struct and loop over it. */
	if ((option = FUNC5(FUNC0(options), "remove_path", sizeof("remove_path") - 1)) != NULL) {
		if (FUNC3(option) != IS_STRING) {
			FUNC4(NULL, E_WARNING, "remove_path option expected to be a string");
			return -1;
		}

		if (FUNC1(option) < 1) {
			FUNC4(NULL, E_NOTICE, "Empty string given as remove_path option");
			return -1;
		}

		if (FUNC1(option) >= MAXPATHLEN) {
			FUNC4(NULL, E_WARNING, "remove_path string is too long (max: %d, %zd given)",
						MAXPATHLEN - 1, FUNC1(option));
			return -1;
		}
		*remove_path_len = FUNC1(option);
		*remove_path = FUNC2(option);
	}

	if ((option = FUNC5(FUNC0(options), "add_path", sizeof("add_path") - 1)) != NULL) {
		if (FUNC3(option) != IS_STRING) {
			FUNC4(NULL, E_WARNING, "add_path option expected to be a string");
			return -1;
		}

		if (FUNC1(option) < 1) {
			FUNC4(NULL, E_NOTICE, "Empty string given as the add_path option");
			return -1;
		}

		if (FUNC1(option) >= MAXPATHLEN) {
			FUNC4(NULL, E_WARNING, "add_path string too long (max: %d, %zd given)",
						MAXPATHLEN - 1, FUNC1(option));
			return -1;
		}
		*add_path_len = FUNC1(option);
		*add_path = FUNC2(option);
	}
	return 1;
}