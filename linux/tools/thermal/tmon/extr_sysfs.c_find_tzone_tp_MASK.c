#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tz_info {TYPE_1__* tp; int /*<<< orphan*/  nr_trip_pts; } ;
struct TYPE_2__ {unsigned long temp; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int MAX_NR_TRIP ; 
 unsigned long MAX_TEMP_KC ; 
 int FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,...) ; 

__attribute__((used)) static int FUNC5(char *tz_name, char *d_name, struct tz_info *tzi,
			int tz_id)
{
	int tp_id;
	unsigned long temp_ulong;

	if (FUNC2(d_name, "trip_point") &&
		FUNC2(d_name, "temp")) {
		/* check if trip point temp is non-zero
		 * ignore 0/invalid trip points
		 */
		FUNC3(tz_name, d_name, &temp_ulong);
		if (temp_ulong < MAX_TEMP_KC) {
			tzi->nr_trip_pts++;
			/* found a valid trip point */
			tp_id = FUNC0(d_name, 2, 0);
			FUNC4(LOG_DEBUG, "tzone %s trip %d temp %lu tpnode %s",
				tz_name, tp_id, temp_ulong, d_name);
			if (tp_id < 0 || tp_id >= MAX_NR_TRIP) {
				FUNC4(LOG_ERR, "Failed to find TP inst %s\n",
					d_name);
				return -1;
			}
			FUNC1(tz_name, tz_id, tp_id);
			tzi->tp[tp_id].temp = temp_ulong;
		}
	}

	return 0;
}