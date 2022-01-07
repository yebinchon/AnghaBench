
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int update_every; } ;
struct TYPE_6__ {int options; scalar_t__ st; int events; void* rd_count; int last; void* rd_value; int name; } ;
typedef TYPE_1__ STATSD_METRIC ;


 int D_STATSD ;
 int NETDATA_CHART_PRIO_STATSD_PRIVATE ;
 int RRDSET_TYPE_AREA ;
 int RRD_ALGORITHM_INCREMENTAL ;
 int RRD_ID_LENGTH_MAX ;
 int STATSD_METRIC_OPTION_CHART_DIMENSION_COUNT ;
 int debug (int ,char*,char const*,int ) ;
 void* rrddim_add (scalar_t__,char const*,int *,int,int,int ) ;
 int rrddim_set_by_pointer (scalar_t__,void*,int ) ;
 int rrdset_done (scalar_t__) ;
 int rrdset_next (scalar_t__) ;
 int snprintfz (char*,int ,char*,char const*,int ) ;
 TYPE_5__ statsd ;
 int statsd_get_metric_type_and_id (TYPE_1__*,char*,char*,char const*,int ) ;
 scalar_t__ statsd_private_rrdset_create (TYPE_1__*,char*,char*,int *,char const*,char*,char*,char*,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void statsd_private_chart_counter_or_meter(STATSD_METRIC *m, const char *dim, const char *family) {
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
                , "events/s"
                , NETDATA_CHART_PRIO_STATSD_PRIVATE
                , statsd.update_every
                , RRDSET_TYPE_AREA
        );

        m->rd_value = rrddim_add(m->st, dim, ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);

        if(m->options & STATSD_METRIC_OPTION_CHART_DIMENSION_COUNT)
            m->rd_count = rrddim_add(m->st, "events", ((void*)0), 1, 1, RRD_ALGORITHM_INCREMENTAL);
    }
    else rrdset_next(m->st);

    rrddim_set_by_pointer(m->st, m->rd_value, m->last);

    if(m->rd_count)
        rrddim_set_by_pointer(m->st, m->rd_count, m->events);

    rrdset_done(m->st);
}
