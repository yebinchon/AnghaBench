#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_6__ {int t_target; } ;
struct TYPE_5__ {int nr_cooling_dev; TYPE_1__* cdi; } ;
struct TYPE_4__ {int /*<<< orphan*/  instance; } ;
typedef  int /*<<< orphan*/  PANEL ;

/* Variables and functions */
 char* CDEV ; 
 int MAX_CTRL_TEMP ; 
 int MIN_CTRL_TEMP ; 
 char* THERMAL_SYSFS ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (char*) ; 
 scalar_t__ dialogue_on ; 
 int /*<<< orphan*/ * dialogue_window ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_3__ p_param ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__ ptdata ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/ * top ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 

__attribute__((used)) static void FUNC12(int ch)
{
	char buf[32];
	int val;
	char path[256];
	WINDOW *w = dialogue_window;

	FUNC1();
	FUNC2(w, TRUE);
	FUNC10(w, buf, 31);
	val = FUNC0(buf);

	if (ch == ptdata.nr_cooling_dev) {
		FUNC7(buf, 31, "Invalid Temp %d! %d-%d", val,
			MIN_CTRL_TEMP, MAX_CTRL_TEMP);
		if (val < MIN_CTRL_TEMP || val > MAX_CTRL_TEMP)
			FUNC11(40, buf);
		else {
			p_param.t_target = val;
			FUNC7(buf, 31, "Set New Target Temp %d", val);
			FUNC11(40, buf);
		}
	} else {
		FUNC7(path, 256, "%s/%s%d", THERMAL_SYSFS,
			CDEV, ptdata.cdi[ch].instance);
		FUNC8(path, "cur_state", val);
	}
	FUNC3();
	dialogue_on = 0;
	FUNC6();
	FUNC5();

	top = (PANEL *)FUNC4(top);
	FUNC9(top);
}