
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* st_alloc_efficiency; void* rd_alloc_efficiency; void* st_comp_ratio; void* rd_comp_ratio; void* st_savings; void* rd_original_size; void* rd_savings_size; void* st_usage; void* rd_metadata_size; void* rd_compr_data_size; } ;
typedef TYPE_1__ ZRAM_DEVICE ;


 int NETDATA_CHART_PRIO_MEM_ZRAM ;
 int NETDATA_CHART_PRIO_MEM_ZRAM_EFFICIENCY ;
 int NETDATA_CHART_PRIO_MEM_ZRAM_RATIO ;
 int NETDATA_CHART_PRIO_MEM_ZRAM_SAVINGS ;
 int PLUGIN_PROC_MODULE_ZRAM_NAME ;
 int PLUGIN_PROC_NAME ;
 int RRDSET_TYPE_AREA ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int RRD_ID_LENGTH_MAX ;
 void* rrddim_add (void*,char*,int *,int,int,int ) ;
 void* rrdset_create_localhost (char*,char*,char*,char const*,char*,char*,char*,int ,int ,int ,int,int ) ;
 int snprintfz (char*,int ,char*,char const*) ;

__attribute__((used)) static inline void init_rrd(const char *name, ZRAM_DEVICE *d, int update_every) {
    char chart_name[RRD_ID_LENGTH_MAX + 1];

    snprintfz(chart_name, RRD_ID_LENGTH_MAX, "zram_usage.%s", name);
    d->st_usage = rrdset_create_localhost(
        "mem"
        , chart_name
        , chart_name
        , name
        , "mem.zram_usage"
        , "ZRAM Memory Usage"
        , "MiB"
        , PLUGIN_PROC_NAME
        , PLUGIN_PROC_MODULE_ZRAM_NAME
        , NETDATA_CHART_PRIO_MEM_ZRAM
        , update_every
        , RRDSET_TYPE_AREA);
    d->rd_compr_data_size = rrddim_add(d->st_usage, "compressed", ((void*)0), 1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);
    d->rd_metadata_size = rrddim_add(d->st_usage, "metadata", ((void*)0), 1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);

    snprintfz(chart_name, RRD_ID_LENGTH_MAX, "zram_savings.%s", name);
    d->st_savings = rrdset_create_localhost(
        "mem"
        , chart_name
        , chart_name
        , name
        , "mem.zram_savings"
        , "ZRAM Memory Savings"
        , "MiB"
        , PLUGIN_PROC_NAME
        , PLUGIN_PROC_MODULE_ZRAM_NAME
        , NETDATA_CHART_PRIO_MEM_ZRAM_SAVINGS
        , update_every
        , RRDSET_TYPE_AREA);
    d->rd_savings_size = rrddim_add(d->st_savings, "savings", ((void*)0), 1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);
    d->rd_original_size = rrddim_add(d->st_savings, "original", ((void*)0), 1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);

    snprintfz(chart_name, RRD_ID_LENGTH_MAX, "zram_ratio.%s", name);
    d->st_comp_ratio = rrdset_create_localhost(
        "mem"
        , chart_name
        , chart_name
        , name
        , "mem.zram_ratio"
        , "ZRAM Compression Ratio (original to compressed)"
        , "ratio"
        , PLUGIN_PROC_NAME
        , PLUGIN_PROC_MODULE_ZRAM_NAME
        , NETDATA_CHART_PRIO_MEM_ZRAM_RATIO
        , update_every
        , RRDSET_TYPE_LINE);
    d->rd_comp_ratio = rrddim_add(d->st_comp_ratio, "ratio", ((void*)0), 1, 100, RRD_ALGORITHM_ABSOLUTE);

    snprintfz(chart_name, RRD_ID_LENGTH_MAX, "zram_efficiency.%s", name);
    d->st_alloc_efficiency = rrdset_create_localhost(
        "mem"
        , chart_name
        , chart_name
        , name
        , "mem.zram_efficiency"
        , "ZRAM Efficiency"
        , "percentage"
        , PLUGIN_PROC_NAME
        , PLUGIN_PROC_MODULE_ZRAM_NAME
        , NETDATA_CHART_PRIO_MEM_ZRAM_EFFICIENCY
        , update_every
        , RRDSET_TYPE_LINE);
    d->rd_alloc_efficiency = rrddim_add(d->st_alloc_efficiency, "percent", ((void*)0), 1, 10000, RRD_ALGORITHM_ABSOLUTE);
}
