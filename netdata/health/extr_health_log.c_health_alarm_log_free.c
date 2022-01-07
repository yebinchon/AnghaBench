
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* next; } ;
struct TYPE_7__ {int alarm_log_rwlock; TYPE_3__* alarms; } ;
struct TYPE_8__ {TYPE_1__ health_log; } ;
typedef TYPE_2__ RRDHOST ;
typedef TYPE_3__ ALARM_ENTRY ;


 int health_alarm_log_free_one_nochecks_nounlink (TYPE_3__*) ;
 int netdata_rwlock_unlock (int *) ;
 int netdata_rwlock_wrlock (int *) ;
 int rrdhost_check_wrlock (TYPE_2__*) ;

inline void health_alarm_log_free(RRDHOST *host) {
    rrdhost_check_wrlock(host);

    netdata_rwlock_wrlock(&host->health_log.alarm_log_rwlock);

    ALARM_ENTRY *ae;
    while((ae = host->health_log.alarms)) {
        host->health_log.alarms = ae->next;
        health_alarm_log_free_one_nochecks_nounlink(ae);
    }

    netdata_rwlock_unlock(&host->health_log.alarm_log_rwlock);
}
