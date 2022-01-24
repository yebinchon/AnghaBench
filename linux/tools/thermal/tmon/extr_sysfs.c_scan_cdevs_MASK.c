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
typedef  int /*<<< orphan*/ **** dirent ;
typedef  int /*<<< orphan*/  cdev_name ;
struct TYPE_4__ {int max_cdev_instance; TYPE_1__* cdi; int /*<<< orphan*/  nr_cooling_dev; } ;
struct TYPE_3__ {int instance; int /*<<< orphan*/  flag; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 char* CDEV ; 
 int /*<<< orphan*/  CDEV_FLAG_IN_CONTROL ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 char* THERMAL_SYSFS ; 
 int /*<<< orphan*/  alphasort ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ctrl_cdev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ******) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 TYPE_2__ ptdata ; 
 int FUNC5 (char*,int /*<<< orphan*/ *******,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC10(void)
{
	DIR *dir;
	struct dirent **namelist;
	char cdev_name[256];
	int i, n, k = 0;

	if (!ptdata.nr_cooling_dev) {
		FUNC1(stderr, "No cooling devices found\n");
		return 0;
	}
	for (i = 0; i <= ptdata.max_cdev_instance; i++) {
		FUNC3(cdev_name, 0, sizeof(cdev_name));
		FUNC6(cdev_name, 256, "%s/%s%d", THERMAL_SYSFS, CDEV, i);

		dir = FUNC4(cdev_name);
		if (!dir) {
			FUNC9(LOG_INFO, "Cooling dev %s skipped\n", cdev_name);
			/* there is a gap in cooling device id, check again
			 * for the same index.
			 */
			continue;
		}

		n = FUNC5(cdev_name, &namelist, 0, alphasort);
		if (n < 0)
			FUNC9(LOG_ERR, "scandir failed in %s",  cdev_name);
		else {
			FUNC8(cdev_name, "type", ptdata.cdi[k].type);
			ptdata.cdi[k].instance = i;
			if (FUNC7(ptdata.cdi[k].type, ctrl_cdev)) {
				ptdata.cdi[k].flag |= CDEV_FLAG_IN_CONTROL;
				FUNC9(LOG_DEBUG, "control cdev id %d\n", i);
			}
			while (n--)
				FUNC2(namelist[n]);
			FUNC2(namelist);
		}
		FUNC0(dir);
		k++;
	}
	return 0;
}