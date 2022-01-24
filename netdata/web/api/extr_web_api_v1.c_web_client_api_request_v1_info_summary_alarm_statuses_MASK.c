#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int status; TYPE_2__* rrdset; struct TYPE_11__* next; } ;
struct TYPE_10__ {TYPE_4__* alarms; } ;
struct TYPE_8__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_9__ {TYPE_1__ last_collected_time; } ;
typedef  TYPE_3__ RRDHOST ;
typedef  TYPE_4__ RRDCALC ;
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
#define  RRDCALC_STATUS_CRITICAL 129 
#define  RRDCALC_STATUS_WARNING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline void FUNC4(RRDHOST *host, BUFFER *wb) {
    int alarm_normal = 0, alarm_warn = 0, alarm_crit = 0;
    RRDCALC *rc;
    FUNC1(host);
    for(rc = host->alarms; rc ; rc = rc->next) {
        if(FUNC3(!rc->rrdset || !rc->rrdset->last_collected_time.tv_sec))
            continue;

        switch(rc->status) {
            case RRDCALC_STATUS_WARNING:
                alarm_warn++;
                break;
            case RRDCALC_STATUS_CRITICAL:
                alarm_crit++;
                break;
            default:
                alarm_normal++;
        }
    }
    FUNC2(host);
    FUNC0(wb, "\t\t\"normal\": %d,\n", alarm_normal);
    FUNC0(wb, "\t\t\"warning\": %d,\n", alarm_warn);
    FUNC0(wb, "\t\t\"critical\": %d\n", alarm_crit);
}