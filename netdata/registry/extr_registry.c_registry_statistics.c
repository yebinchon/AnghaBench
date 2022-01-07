
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rrd_update_every; } ;
struct TYPE_3__ {int usages_count; int persons_count; int machines_count; int urls_count; int persons_urls_count; int machines_urls_count; int persons_memory; int machines_memory; int urls_memory; int persons_urls_memory; int machines_urls_memory; int enabled; } ;
typedef int RRDSET ;
typedef int NAME_VALUE ;
typedef int DICTIONARY ;


 int RRDSET_TYPE_LINE ;
 int RRDSET_TYPE_STACKED ;
 int RRD_ALGORITHM_ABSOLUTE ;
 TYPE_2__* localhost ;
 TYPE_1__ registry ;
 int rrddim_add (int *,char*,int *,int,int,int ) ;
 int rrddim_set (int *,char*,int) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,char*,char*,int,int ,int ) ;
 int rrdset_done (int *) ;
 int rrdset_next (int *) ;
 scalar_t__ unlikely (int) ;

void registry_statistics(void) {
    if(!registry.enabled) return;

    static RRDSET *sts = ((void*)0), *stc = ((void*)0), *stm = ((void*)0);

    if(unlikely(!sts)) {
        sts = rrdset_create_localhost(
                "netdata"
                , "registry_sessions"
                , ((void*)0)
                , "registry"
                , ((void*)0)
                , "NetData Registry Sessions"
                , "sessions"
                , "registry"
                , "stats"
                , 131000
                , localhost->rrd_update_every
                , RRDSET_TYPE_LINE
        );

        rrddim_add(sts, "sessions", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
    }
    else rrdset_next(sts);

    rrddim_set(sts, "sessions", registry.usages_count);
    rrdset_done(sts);



    if(unlikely(!stc)) {
        stc = rrdset_create_localhost(
                "netdata"
                , "registry_entries"
                , ((void*)0)
                , "registry"
                , ((void*)0)
                , "NetData Registry Entries"
                , "entries"
                , "registry"
                , "stats"
                , 131100
                , localhost->rrd_update_every
                , RRDSET_TYPE_LINE
        );

        rrddim_add(stc, "persons", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
        rrddim_add(stc, "machines", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
        rrddim_add(stc, "urls", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
        rrddim_add(stc, "persons_urls", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
        rrddim_add(stc, "machines_urls", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
    }
    else rrdset_next(stc);

    rrddim_set(stc, "persons", registry.persons_count);
    rrddim_set(stc, "machines", registry.machines_count);
    rrddim_set(stc, "urls", registry.urls_count);
    rrddim_set(stc, "persons_urls", registry.persons_urls_count);
    rrddim_set(stc, "machines_urls", registry.machines_urls_count);
    rrdset_done(stc);



    if(unlikely(!stm)) {
        stm = rrdset_create_localhost(
                "netdata"
                , "registry_mem"
                , ((void*)0)
                , "registry"
                , ((void*)0)
                , "NetData Registry Memory"
                , "KiB"
                , "registry"
                , "stats"
                , 131300
                , localhost->rrd_update_every
                , RRDSET_TYPE_STACKED
        );

        rrddim_add(stm, "persons", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
        rrddim_add(stm, "machines", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
        rrddim_add(stm, "urls", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
        rrddim_add(stm, "persons_urls", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
        rrddim_add(stm, "machines_urls", ((void*)0), 1, 1024, RRD_ALGORITHM_ABSOLUTE);
    }
    else rrdset_next(stm);

    rrddim_set(stm, "persons", registry.persons_memory + registry.persons_count * sizeof(NAME_VALUE) + sizeof(DICTIONARY));
    rrddim_set(stm, "machines", registry.machines_memory + registry.machines_count * sizeof(NAME_VALUE) + sizeof(DICTIONARY));
    rrddim_set(stm, "urls", registry.urls_memory);
    rrddim_set(stm, "persons_urls", registry.persons_urls_memory);
    rrddim_set(stm, "machines_urls", registry.machines_urls_memory + registry.machines_count * sizeof(DICTIONARY) + registry.machines_urls_count * sizeof(NAME_VALUE));
    rrdset_done(stm);
}
