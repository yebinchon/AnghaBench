
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unknown_types; int timers; int sets; int histograms; int meters; int counters; int gauges; } ;


 int D_STATSD ;
 int STATSD_METRIC_TYPE_COUNTER ;
 int STATSD_METRIC_TYPE_GAUGE ;
 int STATSD_METRIC_TYPE_HISTOGRAM ;
 int STATSD_METRIC_TYPE_METER ;
 int STATSD_METRIC_TYPE_SET ;
 int STATSD_METRIC_TYPE_TIMER ;
 int debug (int ,char*,char const*,char const*,char const*,char const*,char const*) ;
 int error (char*,char const*,char const*,char const*) ;
 TYPE_1__ statsd ;
 int statsd_find_or_add_metric (int *,char const*,int ) ;
 int statsd_process_counter (int ,char const*,char const*) ;
 int statsd_process_gauge (int ,char const*,char const*) ;
 int statsd_process_histogram (int ,char const*,char const*) ;
 int statsd_process_meter (int ,char const*,char const*) ;
 int statsd_process_set (int ,char const*) ;
 int statsd_process_timer (int ,char const*,char const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void statsd_process_metric(const char *name, const char *value, const char *type, const char *sampling, const char *tags) {
    (void)tags;

    debug(D_STATSD, "STATSD: raw metric '%s', value '%s', type '%s', sampling '%s', tags '%s'", name?name:"(null)", value?value:"(null)", type?type:"(null)", sampling?sampling:"(null)", tags?tags:"(null)");

    if(unlikely(!name || !*name)) return;
    if(unlikely(!type || !*type)) type = "m";

    char t0 = type[0], t1 = type[1];

    if(unlikely(t0 == 'g' && t1 == '\0')) {
        statsd_process_gauge(
                statsd_find_or_add_metric(&statsd.gauges, name, STATSD_METRIC_TYPE_GAUGE),
                value, sampling);
    }
    else if(unlikely((t0 == 'c' || t0 == 'C') && t1 == '\0')) {


        statsd_process_counter(
                statsd_find_or_add_metric(&statsd.counters, name, STATSD_METRIC_TYPE_COUNTER),
                value, sampling);
    }
    else if(unlikely(t0 == 'm' && t1 == '\0')) {
        statsd_process_meter(
                statsd_find_or_add_metric(&statsd.meters, name, STATSD_METRIC_TYPE_METER),
                value, sampling);
    }
    else if(unlikely(t0 == 'h' && t1 == '\0')) {
        statsd_process_histogram(
                statsd_find_or_add_metric(&statsd.histograms, name, STATSD_METRIC_TYPE_HISTOGRAM),
                value, sampling);
    }
    else if(unlikely(t0 == 's' && t1 == '\0')) {
        statsd_process_set(
                statsd_find_or_add_metric(&statsd.sets, name, STATSD_METRIC_TYPE_SET),
                value);
    }
    else if(unlikely(t0 == 'm' && t1 == 's' && type[2] == '\0')) {
        statsd_process_timer(
                statsd_find_or_add_metric(&statsd.timers, name, STATSD_METRIC_TYPE_TIMER),
                value, sampling);
    }
    else {
        statsd.unknown_types++;
        error("STATSD: metric '%s' with value '%s' is sent with unknown metric type '%s'", name, value?value:"", type);
    }
}
