
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ alarm_id; int flags; scalar_t__ new_status; scalar_t__ old_status; scalar_t__ non_clear_duration; scalar_t__ unique_id; scalar_t__ updates_id; scalar_t__ updated_by_id; struct TYPE_12__* next; } ;
struct TYPE_10__ {int alarm_log_rwlock; TYPE_3__* alarms; int count; } ;
struct TYPE_11__ {TYPE_1__ health_log; } ;
typedef TYPE_2__ RRDHOST ;
typedef TYPE_3__ ALARM_ENTRY ;


 int D_HEALTH ;
 int HEALTH_ENTRY_FLAG_UPDATED ;
 scalar_t__ RRDCALC_STATUS_CRITICAL ;
 scalar_t__ RRDCALC_STATUS_WARNING ;
 int alarm_entry_isrepeating (TYPE_2__*,TYPE_3__*) ;
 int debug (int ,char*,scalar_t__) ;
 int error (char*,scalar_t__) ;
 int health_alarm_log_save (TYPE_2__*,TYPE_3__*) ;
 int netdata_rwlock_rdlock (int *) ;
 int netdata_rwlock_unlock (int *) ;
 int netdata_rwlock_wrlock (int *) ;
 scalar_t__ unlikely (int ) ;

inline void health_alarm_log(
        RRDHOST *host,
        ALARM_ENTRY *ae
) {
    debug(D_HEALTH, "Health adding alarm log entry with id: %u", ae->unique_id);

    if(unlikely(alarm_entry_isrepeating(host, ae))) {
        error("Repeating alarms cannot be added to host's alarm log entries. It seems somewhere in the logic, API is being misused. Alarm id: %u", ae->alarm_id);
        return;
    }

    netdata_rwlock_wrlock(&host->health_log.alarm_log_rwlock);
    ae->next = host->health_log.alarms;
    host->health_log.alarms = ae;
    host->health_log.count++;
    netdata_rwlock_unlock(&host->health_log.alarm_log_rwlock);


    netdata_rwlock_rdlock(&host->health_log.alarm_log_rwlock);
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

                health_alarm_log_save(host, t);
            }


            break;
        }
    }
    netdata_rwlock_unlock(&host->health_log.alarm_log_rwlock);

    health_alarm_log_save(host, ae);
}
