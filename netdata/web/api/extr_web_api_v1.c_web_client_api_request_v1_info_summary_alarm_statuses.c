
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int status; TYPE_2__* rrdset; struct TYPE_11__* next; } ;
struct TYPE_10__ {TYPE_4__* alarms; } ;
struct TYPE_8__ {int tv_sec; } ;
struct TYPE_9__ {TYPE_1__ last_collected_time; } ;
typedef TYPE_3__ RRDHOST ;
typedef TYPE_4__ RRDCALC ;
typedef int BUFFER ;




 int buffer_sprintf (int *,char*,int) ;
 int rrdhost_rdlock (TYPE_3__*) ;
 int rrdhost_unlock (TYPE_3__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void web_client_api_request_v1_info_summary_alarm_statuses(RRDHOST *host, BUFFER *wb) {
    int alarm_normal = 0, alarm_warn = 0, alarm_crit = 0;
    RRDCALC *rc;
    rrdhost_rdlock(host);
    for(rc = host->alarms; rc ; rc = rc->next) {
        if(unlikely(!rc->rrdset || !rc->rrdset->last_collected_time.tv_sec))
            continue;

        switch(rc->status) {
            case 128:
                alarm_warn++;
                break;
            case 129:
                alarm_crit++;
                break;
            default:
                alarm_normal++;
        }
    }
    rrdhost_unlock(host);
    buffer_sprintf(wb, "\t\t\"normal\": %d,\n", alarm_normal);
    buffer_sprintf(wb, "\t\t\"warning\": %d,\n", alarm_warn);
    buffer_sprintf(wb, "\t\t\"critical\": %d\n", alarm_crit);
}
