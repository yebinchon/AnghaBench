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
 char* FUNC1 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static char *FUNC3(zval *value, void **config, intptr_t offset) /* {{{ */
{
	char *val = FUNC0(value);
	int *ptr = (int *) ((char *) *config + offset);

	if (!FUNC2(val, "unlimited")) {
		*ptr = -1;
	} else {
		int int_value;
		void *subconf = &int_value;
		char *error;

		error = FUNC1(value, &subconf, 0);

		if (error) {
			return error;
		}

		if (int_value < 0) {
			return "must be greater than zero or 'unlimited'";
		}

		*ptr = int_value;
	}

	return NULL;
}