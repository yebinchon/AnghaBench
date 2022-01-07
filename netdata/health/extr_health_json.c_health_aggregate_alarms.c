
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ status; TYPE_2__* rrdset; struct TYPE_11__* next; } ;
struct TYPE_10__ {TYPE_4__* alarms; } ;
struct TYPE_8__ {int tv_sec; } ;
struct TYPE_9__ {scalar_t__ hash_context; TYPE_1__ last_collected_time; int context; } ;
typedef TYPE_3__ RRDHOST ;
typedef scalar_t__ RRDCALC_STATUS ;
typedef TYPE_4__ RRDCALC ;
typedef int BUFFER ;


 scalar_t__ RRDCALC_STATUS_RAISED ;
 scalar_t__ RRDCALC_STATUS_WARNING ;
 int buffer_sprintf (int *,char*,int) ;
 scalar_t__ buffer_tostring (int *) ;
 char* mystrsep (char**,char*) ;
 int rrdhost_rdlock (TYPE_3__*) ;
 int rrdhost_unlock (TYPE_3__*) ;
 scalar_t__ simple_hash (char*) ;
 int strcmp (int ,char*) ;
 scalar_t__ unlikely (int) ;

void health_aggregate_alarms(RRDHOST *host, BUFFER *wb, BUFFER* contexts, RRDCALC_STATUS status) {
    RRDCALC *rc;
    int numberOfAlarms = 0;
    char *tok = ((void*)0);
    char *p = ((void*)0);

    rrdhost_rdlock(host);

    if (contexts) {
        p = (char*)buffer_tostring(contexts);
        while(p && *p && (tok = mystrsep(&p, ", |"))) {
            if(!*tok) continue;

            for(rc = host->alarms; rc ; rc = rc->next) {
                if(unlikely(!rc->rrdset || !rc->rrdset->last_collected_time.tv_sec))
                    continue;
                if(unlikely(rc->rrdset && rc->rrdset->hash_context == simple_hash(tok)
                            && !strcmp(rc->rrdset->context, tok)
                            && ((status==RRDCALC_STATUS_RAISED)?(rc->status >= RRDCALC_STATUS_WARNING):rc->status == status)))
                    numberOfAlarms++;
            }
        }
    }
    else {
        for(rc = host->alarms; rc ; rc = rc->next) {
            if(unlikely(!rc->rrdset || !rc->rrdset->last_collected_time.tv_sec))
                continue;

            if(unlikely((status==RRDCALC_STATUS_RAISED)?(rc->status >= RRDCALC_STATUS_WARNING):rc->status == status))
                numberOfAlarms++;
        }
    }

    buffer_sprintf(wb, "%d", numberOfAlarms);
    rrdhost_unlock(host);
}
