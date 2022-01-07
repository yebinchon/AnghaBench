
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int decimal_detail; int update_every; } ;
struct TYPE_6__ {int options; scalar_t__ st; int events; void* rd_count; int last; void* rd_value; int name; } ;
typedef TYPE_1__ STATSD_METRIC ;


 int D_STATSD ;
 int NETDATA_CHART_PRIO_STATSD_PRIVATE ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int RRD_ALGORITHM_INCREMENTAL ;
 int RRD_ID_LENGTH_MAX ;
 int STATSD_METRIC_OPTION_CHART_DIMENSION_COUNT ;
 int debug (int ,char*,int ) ;
 void* rrddim_add (scalar_t__,char*,int *,int,int,int ) ;
 int rrddim_set_by_pointer (scalar_t__,void*,int ) ;
 int rrdset_done (scalar_t__) ;
 int rrdset_next (scalar_t__) ;
 int snprintfz (char*,int ,char*,int ) ;
 TYPE_5__ statsd ;
 int statsd_get_metric_type_and_id (TYPE_1__*,char*,char*,char*,int ) ;
 scalar_t__ statsd_private_rrdset_create (TYPE_1__*,char*,char*,int *,char*,char*,char*,char*,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void statsd_private_chart_gauge(STATSD_METRIC *m) {
    debug(D_STATSD, "updating private chart for gauge metric '%s'", m->name);

    if(unlikely(!m->st)) {
        char type[RRD_ID_LENGTH_MAX + 1], id[RRD_ID_LENGTH_MAX + 1];
        statsd_get_metric_type_and_id(m, type, id, "gauge", RRD_ID_LENGTH_MAX);

        char context[RRD_ID_LENGTH_MAX + 1];
        snprintfz(context, RRD_ID_LENGTH_MAX, "statsd_gauge.%s", m->name);

        char title[RRD_ID_LENGTH_MAX + 1];
        snprintfz(title, RRD_ID_LENGTH_MAX, "statsd private chart for gauge %s", m->name);

        m->st = statsd_private_rrdset_create(
                m
                , type
                , id
                , ((void*)0)
                , "gauges"
                , context
                , title
                , "value"
                , NETDATA_CHART_PRIO_STATSD_PRIVATE
                , statsd.update_every
                , RRDSET_TYPE_LINE
        );

        m->rd_value = rrddim_add(m->st, "gauge", ((void*)0), 1, statsd.decimal_detail, RRD_ALGORITHM_ABSOLUTE);

        if(m->options & STATSD_METRIC_OPTION_CHART_DIMENSION_COUNT)
            m->rd_count = rrddim_add(m->st, "events", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
    }
    else rrdset_next(m->st);

    rrddim_set_by_pointer(m->st, m->rd_value, m->last);

    if(m->rd_count)
        rrddim_set_by_pointer(m->st, m->rd_count, m->events);

    rrdset_done(m->st);
}
