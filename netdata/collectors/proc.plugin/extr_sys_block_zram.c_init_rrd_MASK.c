#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* st_alloc_efficiency; void* rd_alloc_efficiency; void* st_comp_ratio; void* rd_comp_ratio; void* st_savings; void* rd_original_size; void* rd_savings_size; void* st_usage; void* rd_metadata_size; void* rd_compr_data_size; } ;
typedef  TYPE_1__ ZRAM_DEVICE ;

/* Variables and functions */
 int /*<<< orphan*/  NETDATA_CHART_PRIO_MEM_ZRAM ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_MEM_ZRAM_EFFICIENCY ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_MEM_ZRAM_RATIO ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_MEM_ZRAM_SAVINGS ; 
 int /*<<< orphan*/  PLUGIN_PROC_MODULE_ZRAM_NAME ; 
 int /*<<< orphan*/  PLUGIN_PROC_NAME ; 
 int /*<<< orphan*/  RRDSET_TYPE_AREA ; 
 int /*<<< orphan*/  RRDSET_TYPE_LINE ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 int /*<<< orphan*/  RRD_ID_LENGTH_MAX ; 
 void* FUNC0 (void*,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (char*,char*,char*,char const*,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static inline void FUNC3(const char *name, ZRAM_DEVICE *d, int update_every) {
    char chart_name[RRD_ID_LENGTH_MAX + 1];

    FUNC2(chart_name, RRD_ID_LENGTH_MAX, "zram_usage.%s", name);
    d->st_usage = FUNC1(
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
    d->rd_compr_data_size = FUNC0(d->st_usage, "compressed", NULL, 1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);
    d->rd_metadata_size = FUNC0(d->st_usage, "metadata", NULL, 1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);

    FUNC2(chart_name, RRD_ID_LENGTH_MAX, "zram_savings.%s", name);
    d->st_savings = FUNC1(
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
    d->rd_savings_size = FUNC0(d->st_savings, "savings", NULL, 1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);
    d->rd_original_size = FUNC0(d->st_savings, "original", NULL, 1, 1024 * 1024, RRD_ALGORITHM_ABSOLUTE);

    FUNC2(chart_name, RRD_ID_LENGTH_MAX, "zram_ratio.%s", name);
    d->st_comp_ratio = FUNC1(
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
    d->rd_comp_ratio = FUNC0(d->st_comp_ratio, "ratio", NULL, 1, 100, RRD_ALGORITHM_ABSOLUTE);

    FUNC2(chart_name, RRD_ID_LENGTH_MAX, "zram_efficiency.%s", name);
    d->st_alloc_efficiency = FUNC1(
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
    d->rd_alloc_efficiency = FUNC0(d->st_alloc_efficiency, "percent", NULL, 1, 10000, RRD_ALGORITHM_ABSOLUTE);
}