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
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  dev ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int O_RDWR ; 
 int O_SYNC ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*,...) ; 
 scalar_t__ FUNC5 (char*,char*,int*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

int FUNC7(const char *mtd, bool block)
{
	FILE *fp;
	char dev[PATH_MAX];
	int i;
	int ret;
	int flags = O_RDWR | O_SYNC;
	char name[PATH_MAX];

	FUNC4(name, sizeof(name), "\"%s\"", mtd);
	if ((fp = FUNC2("/proc/mtd", "r"))) {
		while (FUNC1(dev, sizeof(dev), fp)) {
			if (FUNC5(dev, "mtd%d:", &i) && FUNC6(dev, name)) {
				FUNC4(dev, sizeof(dev), "/dev/mtd%s/%d", (block ? "block" : ""), i);
				if ((ret=FUNC3(dev, flags))<0) {
					FUNC4(dev, sizeof(dev), "/dev/mtd%s%d", (block ? "block" : ""), i);
					ret=FUNC3(dev, flags);
				}
				FUNC0(fp);
				return ret;
			}
		}
		FUNC0(fp);
	}

	return FUNC3(mtd, flags);
}