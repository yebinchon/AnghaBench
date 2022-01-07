
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ status; TYPE_3__* rrdset; struct TYPE_15__* next; } ;
struct TYPE_11__ {scalar_t__ next_log_id; } ;
struct TYPE_14__ {TYPE_5__* alarms; scalar_t__ health_enabled; TYPE_1__ health_log; int hostname; } ;
struct TYPE_12__ {int tv_sec; } ;
struct TYPE_13__ {TYPE_2__ last_collected_time; } ;
typedef TYPE_4__ RRDHOST ;
typedef TYPE_5__ RRDCALC ;
typedef int BUFFER ;


 scalar_t__ RRDCALC_STATUS_CRITICAL ;
 scalar_t__ RRDCALC_STATUS_WARNING ;
 int buffer_sprintf (int *,char*,int ,scalar_t__,char*,unsigned long) ;
 int buffer_strcat (int *,char*) ;
 int health_rrdcalc2json_nolock (TYPE_4__*,int *,TYPE_5__*) ;
 scalar_t__ likely (int) ;
 scalar_t__ now_realtime_sec () ;
 int rrdhost_rdlock (TYPE_4__*) ;
 int rrdhost_unlock (TYPE_4__*) ;
 scalar_t__ unlikely (int) ;

void health_alarms2json(RRDHOST *host, BUFFER *wb, int all) {
    int i;

    rrdhost_rdlock(host);
    buffer_sprintf(wb, "{\n\t\"hostname\": \"%s\","
                    "\n\t\"latest_alarm_log_unique_id\": %u,"
                    "\n\t\"status\": %s,"
                    "\n\t\"now\": %lu,"
                    "\n\t\"alarms\": {\n",
            host->hostname,
            (host->health_log.next_log_id > 0)?(host->health_log.next_log_id - 1):0,
            host->health_enabled?"true":"false",
            (unsigned long)now_realtime_sec());

    RRDCALC *rc;
    for(i = 0, rc = host->alarms; rc ; rc = rc->next) {
        if(unlikely(!rc->rrdset || !rc->rrdset->last_collected_time.tv_sec))
            continue;

        if(likely(!all && !(rc->status == RRDCALC_STATUS_WARNING || rc->status == RRDCALC_STATUS_CRITICAL)))
            continue;

        if(likely(i)) buffer_strcat(wb, ",\n");
        health_rrdcalc2json_nolock(host, wb, rc);
        i++;
    }






    buffer_strcat(wb, "\n\t}\n}\n");
    rrdhost_unlock(host);
}
