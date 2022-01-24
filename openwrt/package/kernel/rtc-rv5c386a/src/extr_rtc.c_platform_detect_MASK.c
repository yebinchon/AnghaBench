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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int scl_index ; 
 int sda_index ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(void)
{
	char buf[20];
	int et0phyaddr, et1phyaddr;

	/* Based on "model_no".  */
	if (FUNC0("model_no", buf, sizeof(buf)) >= 0) {
		if (FUNC2(buf, "WL700")) { /* WL700* */
			sda_index = 2;
			scl_index = 5;
			return;
		}
	}

	if (FUNC0("et0phyaddr", buf, sizeof(buf)) >= 0 )
		et0phyaddr = FUNC1(buf, NULL, 0);
	if (FUNC0("et1phyaddr", buf, sizeof(buf)) >= 0 )
		et1phyaddr = FUNC1(buf, NULL, 0);

	if (FUNC0("hardware_version", buf, sizeof(buf)) >= 0) {
		/* Either WL-300g or WL-HDD, do more extensive checks */
		if (FUNC2(buf, "WL300-") && et0phyaddr == 0 && et1phyaddr == 1) {
			sda_index = 4;
			scl_index = 5;
			return;
		}
	}
	/* not found */
}