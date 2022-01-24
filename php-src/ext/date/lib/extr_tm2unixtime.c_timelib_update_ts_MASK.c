#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  timelib_tzinfo ;
struct TYPE_8__ {scalar_t__ first_last_day_of; scalar_t__ have_special_relative; scalar_t__ have_weekday_relative; } ;
struct TYPE_9__ {int sse_uptodate; TYPE_1__ relative; scalar_t__ have_relative; void* sse; int /*<<< orphan*/  s; int /*<<< orphan*/  i; int /*<<< orphan*/  h; int /*<<< orphan*/  d; int /*<<< orphan*/  y; int /*<<< orphan*/  m; } ;
typedef  TYPE_2__ timelib_time ;
typedef  void* timelib_sll ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(timelib_time* time, timelib_tzinfo* tzi)
{
	timelib_sll res = 0;

	FUNC2(time);
	FUNC0(time);
	FUNC1(time);
	res += FUNC7(time->y);
	res += FUNC5(time->m, time->y);
	res += FUNC4(time->d);
	res += FUNC6(time->h, time->i, time->s);
	time->sse = res;

	res += FUNC3(time, tzi);
	time->sse = res;

	time->sse_uptodate = 1;
	time->have_relative = time->relative.have_weekday_relative = time->relative.have_special_relative = time->relative.first_last_day_of = 0;
}