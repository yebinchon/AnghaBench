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
typedef  int uint32_t ;
typedef  scalar_t__ time_t ;
struct tm {int tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_wday; int /*<<< orphan*/  tm_mday; scalar_t__ tm_mon; } ;
struct rtc_timeval {scalar_t__ tv_sec; int tv_usec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cron_timer ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc_timeval*) ; 

__attribute__((used)) static void FUNC4() {
  struct rtc_timeval tv;
  FUNC3(&tv);
  if (tv.tv_sec == 0) { // Wait for RTC time
    FUNC2(&cron_timer, 1000, 0);
    return;
  }
  time_t t = tv.tv_sec;
  struct tm tm;
  FUNC1(&t, &tm);
  uint32_t diff = 60000 - tm.tm_sec * 1000 - tv.tv_usec / 1000;
  if (tm.tm_sec == 59) {
    t++;
    diff += 60000;
    FUNC1(&t, &tm);
  }
  FUNC2(&cron_timer, diff, 0);
  FUNC0(tm.tm_mon + 1, tm.tm_mday, tm.tm_wday, tm.tm_hour, tm.tm_min);
}