#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  timelib_tzinfo ;
struct TYPE_7__ {int offset; int transition_time; int is_dst; int /*<<< orphan*/  abbr; } ;
typedef  TYPE_1__ timelib_time_offset ;
struct TYPE_8__ {int zone_type; int is_localtime; int z; int dst; int sse; int /*<<< orphan*/  tz_abbr; int /*<<< orphan*/ * tz_info; } ;
typedef  TYPE_2__ timelib_time ;
typedef  int timelib_sll ;

/* Variables and functions */
#define  TIMELIB_ZONETYPE_ABBR 130 
#define  TIMELIB_ZONETYPE_ID 129 
#define  TIMELIB_ZONETYPE_OFFSET 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static timelib_sll FUNC5(timelib_time *tz, timelib_tzinfo *tzi)
{
	switch (tz->zone_type) {
		case TIMELIB_ZONETYPE_OFFSET:

			tz->is_localtime = 1;
			return -tz->z;
			break;

		case TIMELIB_ZONETYPE_ABBR: {
			timelib_sll tmp;

			tz->is_localtime = 1;
			tmp = -tz->z;
			tmp -= tz->dst * 3600;
			return tmp;
			}
			break;

		case TIMELIB_ZONETYPE_ID:
			tzi = tz->tz_info;
			/* Break intentionally missing */

		default:
			/* No timezone in struct, fallback to reference if possible */
			if (tzi) {
				timelib_time_offset *before, *after;
				timelib_sll          tmp;
				int                  in_transition;

				tz->is_localtime = 1;
				before = FUNC1(tz->sse, tzi);
				after = FUNC1(tz->sse - before->offset, tzi);
				FUNC2(tz, tzi);

				in_transition = (
					((tz->sse - after->offset) >= (after->transition_time + (before->offset - after->offset))) &&
					((tz->sse - after->offset) < after->transition_time)
				);

				if ((before->offset != after->offset) && !in_transition) {
					tmp = -after->offset;
				} else {
					tmp = -tz->z;
				}
				FUNC4(before);
				FUNC4(after);

				{
					timelib_time_offset *gmt_offset;

					gmt_offset = FUNC1(tz->sse + tmp, tzi);
					tz->z = gmt_offset->offset;

					tz->dst = gmt_offset->is_dst;
					if (tz->tz_abbr) {
						FUNC0(tz->tz_abbr);
					}
					tz->tz_abbr = FUNC3(gmt_offset->abbr);
					FUNC4(gmt_offset);
				}
				return tmp;
			}
	}
	return 0;
}