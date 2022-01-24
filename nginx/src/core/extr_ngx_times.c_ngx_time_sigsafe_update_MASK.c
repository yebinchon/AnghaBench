#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; } ;
struct TYPE_7__ {int ngx_tm_mon; int /*<<< orphan*/  ngx_tm_sec; int /*<<< orphan*/  ngx_tm_min; int /*<<< orphan*/  ngx_tm_hour; int /*<<< orphan*/  ngx_tm_mday; int /*<<< orphan*/  ngx_tm_year; } ;
typedef  TYPE_1__ ngx_tm_t ;
struct TYPE_8__ {scalar_t__ sec; } ;
typedef  TYPE_2__ ngx_time_t ;
struct TYPE_10__ {int /*<<< orphan*/ * data; } ;
struct TYPE_9__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int NGX_TIME_SLOTS ; 
 int /*<<< orphan*/ ** cached_err_log_time ; 
 int cached_gmtoff ; 
 int /*<<< orphan*/ ** cached_syslog_time ; 
 TYPE_2__* cached_time ; 
 int /*<<< orphan*/ * months ; 
 TYPE_5__ ngx_cached_err_log_time ; 
 TYPE_4__ ngx_cached_syslog_time ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  ngx_time_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t slot ; 

void
FUNC6(void)
{
    u_char          *p, *p2;
    ngx_tm_t         tm;
    time_t           sec;
    ngx_time_t      *tp;
    struct timeval   tv;

    if (!FUNC4(&ngx_time_lock)) {
        return;
    }

    FUNC0(&tv);

    sec = tv.tv_sec;

    tp = &cached_time[slot];

    if (tp->sec == sec) {
        FUNC5(&ngx_time_lock);
        return;
    }

    if (slot == NGX_TIME_SLOTS - 1) {
        slot = 0;
    } else {
        slot++;
    }

    tp = &cached_time[slot];

    tp->sec = 0;

    FUNC1(sec + cached_gmtoff * 60, &tm);

    p = &cached_err_log_time[slot][0];

    (void) FUNC3(p, "%4d/%02d/%02d %02d:%02d:%02d",
                       tm.ngx_tm_year, tm.ngx_tm_mon,
                       tm.ngx_tm_mday, tm.ngx_tm_hour,
                       tm.ngx_tm_min, tm.ngx_tm_sec);

    p2 = &cached_syslog_time[slot][0];

    (void) FUNC3(p2, "%s %2d %02d:%02d:%02d",
                       months[tm.ngx_tm_mon - 1], tm.ngx_tm_mday,
                       tm.ngx_tm_hour, tm.ngx_tm_min, tm.ngx_tm_sec);

    FUNC2();

    ngx_cached_err_log_time.data = p;
    ngx_cached_syslog_time.data = p2;

    FUNC5(&ngx_time_lock);
}