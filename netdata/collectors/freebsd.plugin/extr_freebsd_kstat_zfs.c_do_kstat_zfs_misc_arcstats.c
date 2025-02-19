
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usec_t ;
typedef int uint64_t ;
struct TYPE_2__ {int l2exist; int memory_throttle_count; int l2_asize; int l2_size; int l2_write_bytes; int l2_read_bytes; int l2_misses; int l2_hits; int mfu_size; int mru_size; int size; int c_max; int c_min; int c; int p; int hash_chain_max; int hash_chains; int hash_collisions; int hash_elements_max; int hash_elements; int evict_skip; int mutex_miss; int deleted; int mfu_ghost_hits; int mfu_hits; int mru_ghost_hits; int mru_hits; int prefetch_metadata_misses; int prefetch_metadata_hits; int prefetch_data_misses; int prefetch_data_hits; int demand_metadata_misses; int demand_metadata_hits; int demand_data_misses; int demand_data_hits; int misses; int hits; } ;


 int CONFIG_BOOLEAN_NO ;
 int GETSYSCTL_SIMPLE (char*,int*,int ) ;
 TYPE_1__ arcstats ;
 int config_get_boolean_ondemand (char*,char*,int ) ;
 int generate_charts_arc_summary (char*,char*,int,int) ;
 int generate_charts_arcstats (char*,char*,int,int) ;
 scalar_t__ likely (int*) ;
 int sysctlbyname (char*,int**,size_t*,int *,int ) ;
 scalar_t__ unlikely (int) ;

int do_kstat_zfs_misc_arcstats(int update_every, usec_t dt) {
    (void)dt;

    static int show_zero_charts = -1;
    if(unlikely(show_zero_charts == -1))
        show_zero_charts = config_get_boolean_ondemand("plugin:freebsd:zfs_arcstats", "show zero charts", CONFIG_BOOLEAN_NO);

    unsigned long long l2_size;
    size_t uint64_t_size = sizeof(uint64_t);
    static struct mibs {
        int hits[5];
        int misses[5];
        int demand_data_hits[5];
        int demand_data_misses[5];
        int demand_metadata_hits[5];
        int demand_metadata_misses[5];
        int prefetch_data_hits[5];
        int prefetch_data_misses[5];
        int prefetch_metadata_hits[5];
        int prefetch_metadata_misses[5];
        int mru_hits[5];
        int mru_ghost_hits[5];
        int mfu_hits[5];
        int mfu_ghost_hits[5];
        int deleted[5];
        int mutex_miss[5];
        int evict_skip[5];





        int hash_elements[5];
        int hash_elements_max[5];
        int hash_collisions[5];
        int hash_chains[5];
        int hash_chain_max[5];
        int p[5];
        int c[5];
        int c_min[5];
        int c_max[5];
        int size[5];







        int mru_size[5];





        int mfu_size[5];





        int l2_hits[5];
        int l2_misses[5];


        int l2_read_bytes[5];
        int l2_write_bytes[5];
        int l2_size[5];
        int l2_asize[5];




        int memory_throttle_count[5];
    } mibs;

    arcstats.l2exist = -1;

    if(unlikely(sysctlbyname("kstat.zfs.misc.arcstats.l2_size", &l2_size, &uint64_t_size, ((void*)0), 0)))
        return 0;

    if(likely(l2_size))
        arcstats.l2exist = 1;
    else
        arcstats.l2exist = 0;

    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.hits", mibs.hits, arcstats.hits);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.misses", mibs.misses, arcstats.misses);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.demand_data_hits", mibs.demand_data_hits, arcstats.demand_data_hits);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.demand_data_misses", mibs.demand_data_misses, arcstats.demand_data_misses);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.demand_metadata_hits", mibs.demand_metadata_hits, arcstats.demand_metadata_hits);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.demand_metadata_misses", mibs.demand_metadata_misses, arcstats.demand_metadata_misses);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.prefetch_data_hits", mibs.prefetch_data_hits, arcstats.prefetch_data_hits);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.prefetch_data_misses", mibs.prefetch_data_misses, arcstats.prefetch_data_misses);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.prefetch_metadata_hits", mibs.prefetch_metadata_hits, arcstats.prefetch_metadata_hits);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.prefetch_metadata_misses", mibs.prefetch_metadata_misses, arcstats.prefetch_metadata_misses);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.mru_hits", mibs.mru_hits, arcstats.mru_hits);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.mru_ghost_hits", mibs.mru_ghost_hits, arcstats.mru_ghost_hits);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.mfu_hits", mibs.mfu_hits, arcstats.mfu_hits);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.mfu_ghost_hits", mibs.mfu_ghost_hits, arcstats.mfu_ghost_hits);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.deleted", mibs.deleted, arcstats.deleted);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.mutex_miss", mibs.mutex_miss, arcstats.mutex_miss);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.evict_skip", mibs.evict_skip, arcstats.evict_skip);





    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.hash_elements", mibs.hash_elements, arcstats.hash_elements);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.hash_elements_max", mibs.hash_elements_max, arcstats.hash_elements_max);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.hash_collisions", mibs.hash_collisions, arcstats.hash_collisions);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.hash_chains", mibs.hash_chains, arcstats.hash_chains);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.hash_chain_max", mibs.hash_chain_max, arcstats.hash_chain_max);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.p", mibs.p, arcstats.p);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.c", mibs.c, arcstats.c);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.c_min", mibs.c_min, arcstats.c_min);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.c_max", mibs.c_max, arcstats.c_max);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.size", mibs.size, arcstats.size);







    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.mru_size", mibs.mru_size, arcstats.mru_size);





    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.mfu_size", mibs.mfu_size, arcstats.mfu_size);





    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_hits", mibs.l2_hits, arcstats.l2_hits);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_misses", mibs.l2_misses, arcstats.l2_misses);


    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_read_bytes", mibs.l2_read_bytes, arcstats.l2_read_bytes);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_write_bytes", mibs.l2_write_bytes, arcstats.l2_write_bytes);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_size", mibs.l2_size, arcstats.l2_size);
    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_asize", mibs.l2_asize, arcstats.l2_asize);




    GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.memory_throttle_count", mibs.memory_throttle_count, arcstats.memory_throttle_count);
    generate_charts_arcstats("freebsd", "zfs", show_zero_charts, update_every);
    generate_charts_arc_summary("freebsd", "zfs", show_zero_charts, update_every);

    return 0;
}
