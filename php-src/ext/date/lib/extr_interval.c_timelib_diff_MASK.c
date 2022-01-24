#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  two_backup ;
struct TYPE_14__ {int sse; scalar_t__ us; int zone_type; scalar_t__ z; int h; int dst; scalar_t__ s; scalar_t__ i; scalar_t__ d; scalar_t__ m; scalar_t__ y; TYPE_1__* tz_info; } ;
typedef  TYPE_2__ timelib_time ;
typedef  int timelib_sll ;
struct TYPE_15__ {int invert; int h; scalar_t__ us; scalar_t__ i; scalar_t__ d; int /*<<< orphan*/  days; scalar_t__ s; scalar_t__ m; scalar_t__ y; } ;
typedef  TYPE_3__ timelib_rel_time ;
typedef  int /*<<< orphan*/  one_backup ;
struct TYPE_13__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 TYPE_3__* FUNC6 () ; 

timelib_rel_time *FUNC7(timelib_time *one, timelib_time *two)
{
	timelib_rel_time *rt;
	timelib_time *swp;
	timelib_sll dst_corr = 0 ,dst_h_corr = 0, dst_m_corr = 0;
	timelib_time one_backup, two_backup;

	rt = FUNC6();
	rt->invert = 0;
	if (
		(one->sse > two->sse) ||
		(one->sse == two->sse && one->us > two->us)
	) {
		swp = two;
		two = one;
		one = swp;
		rt->invert = 1;
	}

	/* Calculate correction for DST change over, but only if the TZ type is ID
	 * and it's the same */
	if (one->zone_type == 3 && two->zone_type == 3
		&& (FUNC3(one->tz_info->name, two->tz_info->name) == 0)
		&& (one->z != two->z))
	{
		dst_corr = two->z - one->z;
		dst_h_corr = dst_corr / 3600;
		dst_m_corr = (dst_corr % 3600) / 60;
	}

	/* Save old TZ info */
	FUNC2(&one_backup, one, sizeof(one_backup));
	FUNC2(&two_backup, two, sizeof(two_backup));

    FUNC4(one, 0);
    FUNC4(two, 0);

	rt->y = two->y - one->y;
	rt->m = two->m - one->m;
	rt->d = two->d - one->d;
	rt->h = two->h - one->h;
	rt->i = two->i - one->i;
	rt->s = two->s - one->s;
	rt->us = two->us - one->us;
	if (one_backup.dst == 0 && two_backup.dst == 1 && two->sse >= one->sse + 86400 - dst_corr) {
		rt->h += dst_h_corr;
		rt->i += dst_m_corr;
	}

	rt->days = FUNC0(FUNC1((one->sse - two->sse - (dst_h_corr * 3600) - (dst_m_corr * 60)) / 86400));

	FUNC5(rt->invert ? one : two, rt);

	/* We need to do this after normalisation otherwise we can't get "24H" */
	if (one_backup.dst == 1 && two_backup.dst == 0 && two->sse >= one->sse + 86400) {
		if (two->sse < one->sse + 86400 - dst_corr) {
			rt->d--;
			rt->h = 24;
		} else {
			rt->h += dst_h_corr;
			rt->i += dst_m_corr;
		}
	}

	/* Restore old TZ info */
	FUNC2(one, &one_backup, sizeof(one_backup));
	FUNC2(two, &two_backup, sizeof(two_backup));

	return rt;
}