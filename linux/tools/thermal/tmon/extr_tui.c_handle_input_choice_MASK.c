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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {char nr_cooling_dev; TYPE_1__* cdi; } ;
struct TYPE_3__ {char* type; int instance; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__ ptdata ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 

__attribute__((used)) static void FUNC4(int ch)
{
	char buf[48];
	int base = 0;
	int cdev_id = 0;

	if ((ch >= 'A' && ch <= 'A' + ptdata.nr_cooling_dev) ||
		(ch >= 'a' && ch <= 'a' + ptdata.nr_cooling_dev)) {
		base = (ch < 'a') ? 'A' : 'a';
		cdev_id = ch - base;
		if (ptdata.nr_cooling_dev == cdev_id)
			FUNC2(buf, sizeof(buf), "New Target Temp:");
		else
			FUNC2(buf, sizeof(buf), "New Value for %.10s-%2d: ",
				ptdata.cdi[cdev_id].type,
				ptdata.cdi[cdev_id].instance);
		FUNC3(buf, FUNC0() + 2, 2);
		FUNC1(cdev_id);
	} else {
		FUNC2(buf, sizeof(buf), "Invalid selection %d", ch);
		FUNC3(buf, 8, 2);
	}
}