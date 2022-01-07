
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usec_t ;
struct proc_module {char* name; int enabled; unsigned long long duration; int * rd; int dim; int (* func ) (int,int) ;} ;
typedef int heartbeat_t ;
struct TYPE_2__ {int rrd_update_every; } ;
typedef int RRDSET ;


 int CONFIG_BOOLEAN_NO ;
 int CONFIG_BOOLEAN_YES ;
 int D_PROCNETDEV_LOOP ;
 int RRDSET_TYPE_STACKED ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int USEC_PER_SEC ;
 void* config_get_boolean (char*,char*,int ) ;
 int debug (int ,char*,char*) ;
 int global_statistics_charts () ;
 int heartbeat_init (int *) ;
 int heartbeat_monotonic_dt_to_now_usec (int *) ;
 int heartbeat_next (int *,int) ;
 TYPE_1__* localhost ;
 int netdata_exit ;
 int netdata_thread_cleanup_pop (int) ;
 int netdata_thread_cleanup_push (int ,void*) ;
 int proc_main_cleanup ;
 struct proc_module* proc_modules ;
 int registry_statistics () ;
 int * rrddim_add (int *,int ,int *,int,int,int ) ;
 int rrddim_set_by_pointer (int *,int *,int) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,char*,char*,int,int,int ) ;
 int rrdset_done (int *) ;
 int * rrdset_find_bytype_localhost (char*,char*) ;
 int rrdset_next (int *) ;
 int stub1 (int,int) ;
 scalar_t__ unlikely (int) ;

void *proc_main(void *ptr) {
    netdata_thread_cleanup_push(proc_main_cleanup, ptr);

    int vdo_cpu_netdata = config_get_boolean("plugin:proc", "netdata server resources", CONFIG_BOOLEAN_YES);

    config_get_boolean("plugin:proc", "/proc/pagetypeinfo", CONFIG_BOOLEAN_NO);


    int i;
    for(i = 0 ; proc_modules[i].name ;i++) {
        struct proc_module *pm = &proc_modules[i];

        pm->enabled = config_get_boolean("plugin:proc", pm->name, CONFIG_BOOLEAN_YES);
        pm->duration = 0ULL;
        pm->rd = ((void*)0);
    }

    usec_t step = localhost->rrd_update_every * USEC_PER_SEC;
    heartbeat_t hb;
    heartbeat_init(&hb);
    size_t iterations = 0;

    while(!netdata_exit) {
        iterations++;
        (void)iterations;

        usec_t hb_dt = heartbeat_next(&hb, step);
        usec_t duration = 0ULL;

        if(unlikely(netdata_exit)) break;



        for(i = 0 ; proc_modules[i].name ;i++) {
            struct proc_module *pm = &proc_modules[i];
            if(unlikely(!pm->enabled)) continue;

            debug(D_PROCNETDEV_LOOP, "PROC calling %s.", pm->name);





            pm->enabled = !pm->func(localhost->rrd_update_every, hb_dt);
            pm->duration = heartbeat_monotonic_dt_to_now_usec(&hb) - duration;
            duration += pm->duration;






            if(unlikely(netdata_exit)) break;
        }





        if(vdo_cpu_netdata) {
            static RRDSET *st = ((void*)0);

            if(unlikely(!st)) {
                st = rrdset_find_bytype_localhost("netdata", "plugin_proc_modules");

                if(!st) {
                    st = rrdset_create_localhost(
                            "netdata"
                            , "plugin_proc_modules"
                            , ((void*)0)
                            , "proc"
                            , ((void*)0)
                            , "NetData Proc Plugin Modules Durations"
                            , "milliseconds/run"
                            , "netdata"
                            , "stats"
                            , 132001
                            , localhost->rrd_update_every
                            , RRDSET_TYPE_STACKED
                    );

                    for(i = 0 ; proc_modules[i].name ;i++) {
                        struct proc_module *pm = &proc_modules[i];
                        if(unlikely(!pm->enabled)) continue;

                        pm->rd = rrddim_add(st, pm->dim, ((void*)0), 1, 1000, RRD_ALGORITHM_ABSOLUTE);
                    }
                }
            }
            else rrdset_next(st);

            for(i = 0 ; proc_modules[i].name ;i++) {
                struct proc_module *pm = &proc_modules[i];
                if(unlikely(!pm->enabled)) continue;

                rrddim_set_by_pointer(st, pm->rd, pm->duration);
            }
            rrdset_done(st);

            global_statistics_charts();
            registry_statistics();
        }
    }

    netdata_thread_cleanup_pop(1);
    return ((void*)0);
}
