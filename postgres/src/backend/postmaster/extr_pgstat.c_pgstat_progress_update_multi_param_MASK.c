#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_5__ {int /*<<< orphan*/ * st_progress_param; } ;
typedef  TYPE_1__ PgBackendStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* MyBEEntry ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ volatile*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ volatile*) ; 
 int const PGSTAT_NUM_PROGRESS_PARAM ; 
 int /*<<< orphan*/  pgstat_track_activities ; 

void
FUNC3(int nparam, const int *index,
								   const int64 *val)
{
	volatile PgBackendStatus *beentry = MyBEEntry;
	int			i;

	if (!beentry || !pgstat_track_activities || nparam == 0)
		return;

	FUNC1(beentry);

	for (i = 0; i < nparam; ++i)
	{
		FUNC0(index[i] >= 0 && index[i] < PGSTAT_NUM_PROGRESS_PARAM);

		beentry->st_progress_param[index[i]] = val[i];
	}

	FUNC2(beentry);
}