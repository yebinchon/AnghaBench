
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int avl ;
struct TYPE_17__ {scalar_t__ hash_chart; int foreachcounter; int name; int chart; int spdim; struct TYPE_17__* next; } ;
struct TYPE_16__ {int name; int id; } ;
struct TYPE_15__ {int alarms_idx_health_log; TYPE_4__* alarms_with_foreach; } ;
struct TYPE_14__ {scalar_t__ hash_name; int name; int id; } ;
typedef TYPE_1__ RRDSET ;
typedef TYPE_2__ RRDHOST ;
typedef TYPE_3__ RRDDIM ;
typedef TYPE_4__ RRDCALC ;


 char* alarm_name_with_dim (int ,int ,int ,int ) ;
 scalar_t__ avl_insert_lock (int *,int *) ;
 int error (char*,...) ;
 int freez (char*) ;
 int rrdcalc_add_to_host (TYPE_2__*,TYPE_4__*) ;
 TYPE_4__* rrdcalc_create_from_rrdcalc (TYPE_4__*,TYPE_2__*,char*,int ) ;
 scalar_t__ rrdcalc_exists (TYPE_2__*,int ,char*,int ,int ) ;
 scalar_t__ simple_pattern_matches (int ,int ) ;
 int strcmp (int ,int ) ;
 int strlen (int ) ;

void rrdcalc_link_to_rrddim(RRDDIM *rd, RRDSET *st, RRDHOST *host) {
    RRDCALC *rrdc;
    for (rrdc = host->alarms_with_foreach; rrdc ; rrdc = rrdc->next) {
        if (simple_pattern_matches(rrdc->spdim, rd->id) || simple_pattern_matches(rrdc->spdim, rd->name)) {
            if (rrdc->hash_chart == st->hash_name || !strcmp(rrdc->chart, st->name) || !strcmp(rrdc->chart, st->id)) {
                char *usename = alarm_name_with_dim(rrdc->name, strlen(rrdc->name), rd->name, strlen(rd->name));
                if (usename) {
                    if(rrdcalc_exists(host, st->name, usename, 0, 0)){
                        freez(usename);
                        continue;
                    }

                    RRDCALC *child = rrdcalc_create_from_rrdcalc(rrdc, host, usename, rd->name);
                    if (child) {
                        rrdcalc_add_to_host(host, child);
                        RRDCALC *rdcmp = (RRDCALC *) avl_insert_lock(&(host)->alarms_idx_health_log,(avl *)child);
                        if (rdcmp != child) {
                            error("Cannot insert the alarm index ID %s",child->name);
                        }
                    } else {
                        error("Cannot allocate a new alarm.");
                        rrdc->foreachcounter--;
                    }
                }
            }
        }
    }
}
