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
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  source_date_epoch ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (char*,char**,int) ; 

__attribute__((used)) static void FUNC4() {
	char *env = FUNC2("SOURCE_DATE_EPOCH");
	char *endptr = env;
	errno = 0;
        if (env && *env) {
		source_date_epoch = FUNC3(env, &endptr, 10);
		if (errno || (endptr && *endptr != '\0')) {
			FUNC1(stderr, "Invalid SOURCE_DATE_EPOCH");
			FUNC0(1);
		}
        }
}