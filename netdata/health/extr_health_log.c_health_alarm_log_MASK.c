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
struct TYPE_12__ {scalar_t__ alarm_id; int flags; scalar_t__ new_status; scalar_t__ old_status; scalar_t__ non_clear_duration; scalar_t__ unique_id; scalar_t__ updates_id; scalar_t__ updated_by_id; struct TYPE_12__* next; } ;
struct TYPE_10__ {int /*<<< orphan*/  alarm_log_rwlock; TYPE_3__* alarms; int /*<<< orphan*/  count; } ;
struct TYPE_11__ {TYPE_1__ health_log; } ;
typedef  TYPE_2__ RRDHOST ;
typedef  TYPE_3__ ALARM_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  D_HEALTH ; 
 int HEALTH_ENTRY_FLAG_UPDATED ; 
 scalar_t__ RRDCALC_STATUS_CRITICAL ; 
 scalar_t__ RRDCALC_STATUS_WARNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

inline void FUNC8(
        RRDHOST *host,
        ALARM_ENTRY *ae
) {
    FUNC1(D_HEALTH, "Health adding alarm log entry with id: %u", ae->unique_id);

    if(FUNC7(FUNC0(host, ae))) {
        FUNC2("Repeating alarms cannot be added to host's alarm log entries. It seems somewhere in the logic, API is being misused. Alarm id: %u", ae->alarm_id);
        return;
    }
    // link it
    FUNC6(&host->health_log.alarm_log_rwlock);
    ae->next = host->health_log.alarms;
    host->health_log.alarms = ae;
    host->health_log.count++;
    FUNC5(&host->health_log.alarm_log_rwlock);

    // match previous alarms
    FUNC4(&host->health_log.alarm_log_rwlock);
    ALARM_ENTRY *t;
    for(t = host->health_log.alarms ; t ; t = t->next) {
        if(t != ae && t->alarm_id == ae->alarm_id) {
            if(!(t->flags & HEALTH_ENTRY_FLAG_UPDATED) && !t->updated_by_id) {
                t->flags |= HEALTH_ENTRY_FLAG_UPDATED;
                t->updated_by_id = ae->unique_id;
                ae->updates_id = t->unique_id;

                if((t->new_status == RRDCALC_STATUS_WARNING || t->new_status == RRDCALC_STATUS_CRITICAL) &&
                   (t->old_status == RRDCALC_STATUS_WARNING || t->old_status == RRDCALC_STATUS_CRITICAL))
                    ae->non_clear_duration += t->non_clear_duration;

                FUNC3(host, t);
            }

            // no need to continue
            break;
        }
    }
    FUNC5(&host->health_log.alarm_log_rwlock);

    FUNC3(host, ae);
}