
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16_t ;
typedef int time_t ;
struct rrdeng_region_info {int update_every; } ;
struct TYPE_8__ {int update_every; scalar_t__ rrd_memory_mode; } ;
typedef TYPE_1__ RRDSET ;
typedef int RRDR_OPTIONS ;
typedef int RRDR_GROUPING ;
typedef int RRDR ;


 scalar_t__ RRD_MEMORY_MODE_DBENGINE ;
 int freez (struct rrdeng_region_info*) ;
 int * rrd2rrdr_fixedstep (TYPE_1__*,long,long long,long long,int ,long,int ,char const*,int,int ,int ,int) ;
 int * rrd2rrdr_variablestep (TYPE_1__*,long,long long,long long,int ,long,int ,char const*,int,int ,int ,int,struct rrdeng_region_info*) ;
 unsigned int rrdeng_variable_step_boundaries (TYPE_1__*,long long,long long,struct rrdeng_region_info**,unsigned int*) ;
 int rrdr_convert_before_after_to_absolute (long long*,long long*,int,int ,int ) ;
 int rrdset_first_entry_t (TYPE_1__*) ;
 int rrdset_last_entry_t (TYPE_1__*) ;

RRDR *rrd2rrdr(
        RRDSET *st
        , long points_requested
        , long long after_requested
        , long long before_requested
        , RRDR_GROUPING group_method
        , long resampling_time_requested
        , RRDR_OPTIONS options
        , const char *dimensions
) {
    int rrd_update_every;
    int absolute_period_requested;
    time_t first_entry_t = rrdset_first_entry_t(st);
    time_t last_entry_t = rrdset_last_entry_t(st);

    rrd_update_every = st->update_every;
    absolute_period_requested = rrdr_convert_before_after_to_absolute(&after_requested, &before_requested,
                                                                      rrd_update_every, first_entry_t,
                                                                      last_entry_t);
    return rrd2rrdr_fixedstep(st, points_requested, after_requested, before_requested, group_method,
                              resampling_time_requested, options, dimensions,
                              rrd_update_every, first_entry_t, last_entry_t, absolute_period_requested);
}
