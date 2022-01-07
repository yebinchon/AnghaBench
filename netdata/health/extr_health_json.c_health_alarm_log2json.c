
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_9__ {scalar_t__ unique_id; struct TYPE_9__* next; } ;
struct TYPE_7__ {unsigned int max; int alarm_log_rwlock; TYPE_3__* alarms; } ;
struct TYPE_8__ {TYPE_1__ health_log; } ;
typedef TYPE_2__ RRDHOST ;
typedef int BUFFER ;
typedef TYPE_3__ ALARM_ENTRY ;


 int buffer_strcat (int *,char*) ;
 int health_alarm_entry2json_nolock (int *,TYPE_3__*,TYPE_2__*) ;
 scalar_t__ likely (unsigned int) ;
 int netdata_rwlock_rdlock (int *) ;
 int netdata_rwlock_unlock (int *) ;

void health_alarm_log2json(RRDHOST *host, BUFFER *wb, uint32_t after) {
    netdata_rwlock_rdlock(&host->health_log.alarm_log_rwlock);

    buffer_strcat(wb, "[");

    unsigned int max = host->health_log.max;
    unsigned int count = 0;
    ALARM_ENTRY *ae;
    for(ae = host->health_log.alarms; ae && count < max ; count++, ae = ae->next) {
        if(ae->unique_id > after) {
            if(likely(count)) buffer_strcat(wb, ",");
            health_alarm_entry2json_nolock(wb, ae, host);
        }
    }

    buffer_strcat(wb, "\n]\n");

    netdata_rwlock_unlock(&host->health_log.alarm_log_rwlock);
}
