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
typedef  int __u16 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (char*,char*,char*,int) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *,int) ; 
 char* token_sysfs ; 

__attribute__((used)) static int FUNC6(__u16 token, __u16 *location, __u16 *value)
{
	char location_sysfs[60];
	char value_sysfs[57];
	char buf[4096];
	FILE *f;
	int ret;

	ret = FUNC4(value_sysfs, "%s/%04x_value", token_sysfs, token);
	if (ret < 0) {
		FUNC3("sprintf value failed\n");
		return 2;
	}
	f = FUNC1(value_sysfs, "rb");
	if (!f) {
		FUNC3("failed to open %s\n", value_sysfs);
		return 2;
	}
	FUNC2(buf, 1, 4096, f);
	FUNC0(f);
	*value = (__u16) FUNC5(buf, NULL, 16);

	ret = FUNC4(location_sysfs, "%s/%04x_location", token_sysfs, token);
	if (ret < 0) {
		FUNC3("sprintf location failed\n");
		return 1;
	}
	f = FUNC1(location_sysfs, "rb");
	if (!f) {
		FUNC3("failed to open %s\n", location_sysfs);
		return 2;
	}
	FUNC2(buf, 1, 4096, f);
	FUNC0(f);
	*location = (__u16) FUNC5(buf, NULL, 16);

	if (*location)
		return 0;
	return 2;
}