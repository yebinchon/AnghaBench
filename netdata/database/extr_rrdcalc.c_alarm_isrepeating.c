
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int avl ;
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {int alarms_idx_health_log; } ;
typedef TYPE_1__ RRDHOST ;
typedef TYPE_2__ RRDCALC ;


 scalar_t__ avl_search_lock (int *,int *) ;
 int rrdcalc_isrepeating (TYPE_2__*) ;

int alarm_isrepeating(RRDHOST *host, uint32_t alarm_id) {
    RRDCALC findme;
    findme.id = alarm_id;
    RRDCALC *rc = (RRDCALC *)avl_search_lock(&host->alarms_idx_health_log, (avl *)&findme);
    if (!rc) {
        return 0;
    }
    return rrdcalc_isrepeating(rc);
}
