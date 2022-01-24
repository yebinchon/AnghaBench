#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct TYPE_9__* next; } ;
struct TYPE_7__ {int /*<<< orphan*/  alarm_log_rwlock; TYPE_3__* alarms; } ;
struct TYPE_8__ {TYPE_1__ health_log; } ;
typedef  TYPE_2__ RRDHOST ;
typedef  TYPE_3__ ALARM_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

inline void FUNC4(RRDHOST *host) {
    FUNC3(host);

    FUNC2(&host->health_log.alarm_log_rwlock);

    ALARM_ENTRY *ae;
    while((ae = host->health_log.alarms)) {
        host->health_log.alarms = ae->next;
        FUNC0(ae);
    }

    FUNC1(&host->health_log.alarm_log_rwlock);
}