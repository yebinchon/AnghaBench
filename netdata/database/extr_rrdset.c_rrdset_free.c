
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {char* hostname; TYPE_1__* rrdset_root; } ;
struct TYPE_17__ {int rrd_memory_mode; int memsize; int name; struct TYPE_17__* module_name; struct TYPE_17__* plugin_name; struct TYPE_17__* config_section; int rrdset_rwlock; int id; struct TYPE_17__* next; int rrdvar_root_index; int rrdfamily; scalar_t__ dimensions; scalar_t__ alarms; scalar_t__ variables; TYPE_2__* rrdhost; } ;
typedef TYPE_1__ RRDSET ;
typedef TYPE_2__ RRDHOST ;


 int D_RRD_CALLS ;






 int debug (int ,char*,char*,...) ;
 int error (char*,int ,...) ;
 int freez (TYPE_1__*) ;
 int munmap (TYPE_1__*,int ) ;
 int netdata_rwlock_destroy (int *) ;
 int rrddim_free (TYPE_1__*,scalar_t__) ;
 int rrdfamily_free (TYPE_2__*,int ) ;
 int rrdhost_check_wrlock (TYPE_2__*) ;
 TYPE_1__* rrdset_index_del (TYPE_2__*,TYPE_1__*) ;
 int rrdset_index_del_name (TYPE_2__*,TYPE_1__*) ;
 int rrdset_unlock (TYPE_1__*) ;
 int rrdset_wrlock (TYPE_1__*) ;
 int rrdsetcalc_unlink (scalar_t__) ;
 int rrdsetvar_free (scalar_t__) ;
 int rrdvar_free_remaining_variables (TYPE_2__*,int *) ;
 scalar_t__ unlikely (int) ;

void rrdset_free(RRDSET *st) {
    if(unlikely(!st)) return;

    RRDHOST *host = st->rrdhost;

    rrdhost_check_wrlock(host);
    rrdset_wrlock(st);






    if(unlikely(rrdset_index_del(host, st) != st))
        error("RRDSET: INTERNAL ERROR: attempt to remove from index chart '%s', removed a different chart.", st->id);

    rrdset_index_del_name(host, st);




    while(st->variables) rrdsetvar_free(st->variables);
    while(st->alarms) rrdsetcalc_unlink(st->alarms);
    while(st->dimensions) rrddim_free(st, st->dimensions);

    rrdfamily_free(host, st->rrdfamily);

    debug(D_RRD_CALLS, "RRDSET: Cleaning up remaining chart variables for host '%s', chart '%s'", host->hostname, st->id);
    rrdvar_free_remaining_variables(host, &st->rrdvar_root_index);




    if(st == host->rrdset_root) {
        host->rrdset_root = st->next;
    }
    else {

        RRDSET *s;
        for(s = host->rrdset_root; s && s->next != st ; s = s->next) ;


        if(s) s->next = st->next;
        else error("Request to free RRDSET '%s': cannot find it under host '%s'", st->id, host->hostname);
    }

    rrdset_unlock(st);




    netdata_rwlock_destroy(&st->rrdset_rwlock);


    freez(st->config_section);
    freez(st->plugin_name);
    freez(st->module_name);

    switch(st->rrd_memory_mode) {
        case 128:
        case 131:
        case 129:
            debug(D_RRD_CALLS, "Unmapping stats '%s'.", st->name);
            munmap(st, st->memsize);
            break;

        case 133:
        case 130:
        case 132:
            freez(st);
            break;
    }
}
