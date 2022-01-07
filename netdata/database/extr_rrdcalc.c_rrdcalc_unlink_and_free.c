
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int avl ;
struct TYPE_8__ {char* chart; char* name; struct TYPE_8__* next; scalar_t__ rrdset; } ;
struct TYPE_7__ {int alarms_idx_name; int alarms_idx_health_log; int hostname; TYPE_2__* alarms; } ;
typedef TYPE_1__ RRDHOST ;
typedef TYPE_2__ RRDCALC ;


 int D_HEALTH ;
 scalar_t__ avl_remove_lock (int *,int *) ;
 scalar_t__ avl_search_lock (int *,int *) ;
 int debug (int ,char*,char*,char*,int ) ;
 int error (char*,...) ;
 int rrdcalc_free (TYPE_2__*) ;
 int rrdsetcalc_unlink (TYPE_2__*) ;
 scalar_t__ unlikely (int) ;

void rrdcalc_unlink_and_free(RRDHOST *host, RRDCALC *rc) {
    if(unlikely(!rc)) return;

    debug(D_HEALTH, "Health removing alarm '%s.%s' of host '%s'", rc->chart?rc->chart:"NOCHART", rc->name, host->hostname);


    if(rc->rrdset) rrdsetcalc_unlink(rc);


    if(unlikely(rc == host->alarms))
        host->alarms = rc->next;
    else {
        RRDCALC *t;
        for(t = host->alarms; t && t->next != rc; t = t->next) ;
        if(t) {
            t->next = rc->next;
            rc->next = ((void*)0);
        }
        else
            error("Cannot unlink alarm '%s.%s' from host '%s': not found", rc->chart?rc->chart:"NOCHART", rc->name, host->hostname);
    }

    RRDCALC *rdcmp = (RRDCALC *) avl_search_lock(&(host)->alarms_idx_health_log, (avl *)rc);
    if (rdcmp) {
        rdcmp = (RRDCALC *) avl_remove_lock(&(host)->alarms_idx_health_log, (avl *)rc);
        if (!rdcmp) {
            error("Cannot remove the health alarm index from health_log");
        }
    }

    rdcmp = (RRDCALC *) avl_search_lock(&(host)->alarms_idx_name, (avl *)rc);
    if (rdcmp) {
        rdcmp = (RRDCALC *) avl_remove_lock(&(host)->alarms_idx_name, (avl *)rc);
        if (!rdcmp) {
            error("Cannot remove the health alarm index from idx_name");
        }
    }

    rrdcalc_free(rc);
}
