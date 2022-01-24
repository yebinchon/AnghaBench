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
typedef  scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
struct mrb_time {int /*<<< orphan*/  timezone; scalar_t__ usec; scalar_t__ sec; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  E_RUNTIME_ERROR ; 
 int /*<<< orphan*/  MRB_TIMEZONE_LOCAL ; 
 int /*<<< orphan*/  TIME_UTC ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mrb_time*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct timespec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mrb_time*
FUNC6(mrb_state *mrb)
{
  struct mrb_time tmzero = {0};
  struct mrb_time *tm;
  time_t sec, usec;

#if defined(TIME_UTC) && !defined(__ANDROID__)
  {
    struct timespec ts;
    if (timespec_get(&ts, TIME_UTC) == 0) {
      mrb_raise(mrb, E_RUNTIME_ERROR, "timespec_get() failed for unknown reasons");
    }
    sec = ts.tv_sec;
    usec = ts.tv_nsec / 1000;
  }
#elif defined(NO_GETTIMEOFDAY)
  {
    static time_t last_sec = 0, last_usec = 0;

    sec = time(NULL);
    if (sec != last_sec) {
      last_sec = sec;
      last_usec = 0;
    }
    else {
      /* add 1 usec to differentiate two times */
      last_usec += 1;
    }
    usec = last_usec;
  }
#else
  {
    struct timeval tv;

    FUNC0(&tv, NULL);
    sec = tv.tv_sec;
    usec = tv.tv_usec;
  }
#endif
  tm = (struct mrb_time *)FUNC1(mrb, sizeof(*tm));
  *tm = tmzero;
  tm->sec = sec; tm->usec = usec;
  tm->timezone = MRB_TIMEZONE_LOCAL;
  FUNC4(mrb, tm, TRUE);

  return tm;
}