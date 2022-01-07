
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int decimal_detail; char* histogram_percentile_str; int update_every; } ;
struct TYPE_9__ {TYPE_1__* ext; } ;
struct TYPE_10__ {int options; scalar_t__ st; int events; void* rd_count; int last; void* rd_value; TYPE_2__ histogram; int name; } ;
struct TYPE_8__ {int last_sum; void* rd_sum; int last_stddev; void* rd_stddev; int last_median; void* rd_median; int last_percentile; void* rd_percentile; int last_max; void* rd_max; int last_min; void* rd_min; } ;
typedef TYPE_3__ STATSD_METRIC ;


 int D_STATSD ;
 int NETDATA_CHART_PRIO_STATSD_PRIVATE ;
 int RRDSET_TYPE_AREA ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int RRD_ALGORITHM_INCREMENTAL ;
 int RRD_ID_LENGTH_MAX ;
 int STATSD_METRIC_OPTION_CHART_DIMENSION_COUNT ;
 int debug (int ,char*,char const*,int ) ;
 void* rrddim_add (scalar_t__,char*,int *,int,int,int ) ;
 int rrddim_set_by_pointer (scalar_t__,void*,int ) ;
 int rrdset_done (scalar_t__) ;
 int rrdset_next (scalar_t__) ;
 int snprintfz (char*,int ,char*,char const*,int ) ;
 TYPE_7__ statsd ;
 int statsd_get_metric_type_and_id (TYPE_3__*,char*,char*,char const*,int ) ;
 scalar_t__ statsd_private_rrdset_create (TYPE_3__*,char*,char*,int *,char const*,char*,char*,char const*,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void statsd_private_chart_timer_or_histogram(STATSD_METRIC *m, const char *dim, const char *family, const char *units) {
    debug(D_STATSD, "updating private chart for %s metric '%s'", dim, m->name);

    if(unlikely(!m->st)) {
        char type[RRD_ID_LENGTH_MAX + 1], id[RRD_ID_LENGTH_MAX + 1];
        statsd_get_metric_type_and_id(m, type, id, dim, RRD_ID_LENGTH_MAX);

        char context[RRD_ID_LENGTH_MAX + 1];
        snprintfz(context, RRD_ID_LENGTH_MAX, "statsd_%s.%s", dim, m->name);

        char title[RRD_ID_LENGTH_MAX + 1];
        snprintfz(title, RRD_ID_LENGTH_MAX, "statsd private chart for %s %s", dim, m->name);

        m->st = statsd_private_rrdset_create(
                m
                , type
                , id
                , ((void*)0)
                , family
                , context
                , title
                , units
                , NETDATA_CHART_PRIO_STATSD_PRIVATE
                , statsd.update_every
                , RRDSET_TYPE_AREA
        );

        m->histogram.ext->rd_min = rrddim_add(m->st, "min", ((void*)0), 1, statsd.decimal_detail, RRD_ALGORITHM_ABSOLUTE);
        m->histogram.ext->rd_max = rrddim_add(m->st, "max", ((void*)0), 1, statsd.decimal_detail, RRD_ALGORITHM_ABSOLUTE);
        m->rd_value = rrddim_add(m->st, "average", ((void*)0), 1, statsd.decimal_detail, RRD_ALGORITHM_ABSOLUTE);
        m->histogram.ext->rd_percentile = rrddim_add(m->st, statsd.histogram_percentile_str, ((void*)0), 1, statsd.decimal_detail, RRD_ALGORITHM_ABSOLUTE);
        m->histogram.ext->rd_median = rrddim_add(m->st, "median", ((void*)0), 1, statsd.decimal_detail, RRD_ALGORITHM_ABSOLUTE);
        m->histogram.ext->rd_stddev = rrddim_add(m->st, "stddev", ((void*)0), 1, statsd.decimal_detail, RRD_ALGORITHM_ABSOLUTE);
        m->histogram.ext->rd_sum = rrddim_add(m->st, "sum", ((void*)0), 1, statsd.decimal_detail, RRD_ALGORITHM_ABSOLUTE);

        if(m->options & STATSD_METRIC_OPTION_CHART_DIMENSION_COUNT)
            m->rd_count = rrddim_add(m->st, "events", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
    }
    else rrdset_next(m->st);

    rrddim_set_by_pointer(m->st, m->histogram.ext->rd_min, m->histogram.ext->last_min);
    rrddim_set_by_pointer(m->st, m->histogram.ext->rd_max, m->histogram.ext->last_max);
    rrddim_set_by_pointer(m->st, m->histogram.ext->rd_percentile, m->histogram.ext->last_percentile);
    rrddim_set_by_pointer(m->st, m->histogram.ext->rd_median, m->histogram.ext->last_median);
    rrddim_set_by_pointer(m->st, m->histogram.ext->rd_stddev, m->histogram.ext->last_stddev);
    rrddim_set_by_pointer(m->st, m->histogram.ext->rd_sum, m->histogram.ext->last_sum);
    rrddim_set_by_pointer(m->st, m->rd_value, m->last);

    if(m->rd_count)
        rrddim_set_by_pointer(m->st, m->rd_count, m->events);

    rrdset_done(m->st);
}
