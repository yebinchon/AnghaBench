#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ time_t ;
struct TYPE_12__ {scalar_t__ unique_id; int flags; scalar_t__ delay_up_to_timestamp; struct TYPE_12__* next; } ;
struct TYPE_10__ {int count; int max; int /*<<< orphan*/  alarm_log_rwlock; TYPE_3__* alarms; } ;
struct TYPE_11__ {scalar_t__ health_last_processed_id; TYPE_1__ health_log; } ;
typedef  TYPE_2__ RRDHOST ;
typedef  TYPE_3__ ALARM_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  D_HEALTH ; 
 int HEALTH_ENTRY_FLAG_PROCESSED ; 
 int HEALTH_ENTRY_FLAG_UPDATED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static inline void FUNC10(RRDHOST *host) {
    uint32_t first_waiting = (host->health_log.alarms)?host->health_log.alarms->unique_id:0;
    time_t now = FUNC8();

    FUNC5(&host->health_log.alarm_log_rwlock);

    ALARM_ENTRY *ae;
    for(ae = host->health_log.alarms; ae && ae->unique_id >= host->health_last_processed_id; ae = ae->next) {
        if(FUNC4(!FUNC0(host, ae))) {
            if(FUNC9(
                    !(ae->flags & HEALTH_ENTRY_FLAG_PROCESSED) &&
                    !(ae->flags & HEALTH_ENTRY_FLAG_UPDATED)
            )) {
                if(FUNC9(ae->unique_id < first_waiting))
                    first_waiting = ae->unique_id;

                if(FUNC4(now >= ae->delay_up_to_timestamp))
                    FUNC3(host, ae);
            }
        }
    }

    // remember this for the next iteration
    host->health_last_processed_id = first_waiting;

    FUNC6(&host->health_log.alarm_log_rwlock);

    if(host->health_log.count <= host->health_log.max)
        return;

    // cleanup excess entries in the log
    FUNC7(&host->health_log.alarm_log_rwlock);

    ALARM_ENTRY *last = NULL;
    unsigned int count = host->health_log.max * 2 / 3;
    for(ae = host->health_log.alarms; ae && count ; count--, last = ae, ae = ae->next) ;

    if(ae && last && last->next == ae)
        last->next = NULL;
    else
        ae = NULL;

    while(ae) {
        FUNC1(D_HEALTH, "Health removing alarm log entry with id: %u", ae->unique_id);

        ALARM_ENTRY *t = ae->next;

        if(FUNC4(!FUNC0(host, ae))) {
            FUNC2(ae);
            host->health_log.count--;
        }

        ae = t;
    }

    FUNC6(&host->health_log.alarm_log_rwlock);
}