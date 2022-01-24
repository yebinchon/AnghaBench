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
typedef  void* time_t ;
struct mrb_time {long sec; long usec; int timezone; } ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  enum mrb_timezone { ____Placeholder_mrb_timezone } mrb_timezone ;

/* Variables and functions */
 scalar_t__ FUNC0 (long,int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mrb_time*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mrb_time*
FUNC3(mrb_state *mrb, time_t sec, time_t usec, enum mrb_timezone timezone)
{
  struct mrb_time *tm;

  tm = (struct mrb_time *)FUNC1(mrb, sizeof(struct mrb_time));
  tm->sec  = sec;
  tm->usec = usec;
  if (tm->usec < 0) {
    long sec2 = (long)FUNC0(tm->usec,1000000); /* negative div */
    tm->usec -= sec2 * 1000000;
    tm->sec += sec2;
  }
  else if (tm->usec >= 1000000) {
    long sec2 = (long)(tm->usec / 1000000);
    tm->usec -= sec2 * 1000000;
    tm->sec += sec2;
  }
  tm->timezone = timezone;
  FUNC2(mrb, tm, TRUE);

  return tm;
}