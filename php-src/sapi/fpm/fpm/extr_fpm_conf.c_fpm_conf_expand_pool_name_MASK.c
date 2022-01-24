#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* config; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 TYPE_2__* current_wp ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6(char **value) {
	char *token;

	if (!value || !*value) {
		return 0;
	}

	while (*value && (token = FUNC5(*value, "$pool"))) {
		char *buf;
		char *p2 = token + FUNC4("$pool");

		/* If we are not in a pool, we cannot expand this name now */
		if (!current_wp || !current_wp->config  || !current_wp->config->name) {
			return -1;
		}

		/* "aaa$poolbbb" becomes "aaa\0oolbbb" */
		token[0] = '\0';

		/* Build a brand new string with the expanded token */
		FUNC2(&buf, 0, "%s%s%s", *value, current_wp->config->name, p2);

		/* Free the previous value and save the new one */
		FUNC1(*value);
		*value = FUNC3(buf);
		FUNC0(buf);
	}

	return 0;
}