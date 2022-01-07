
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int value; } ;
struct TYPE_7__ {int reset; int count; int events; TYPE_1__ gauge; int name; } ;
typedef TYPE_2__ STATSD_METRIC ;


 int error (char*,int ) ;
 int is_metric_useful_for_collection (TYPE_2__*) ;
 int statsd_parse_float (char const*,double) ;
 int statsd_parse_sampling_rate (char const*) ;
 int statsd_reset_metric (TYPE_2__*) ;
 scalar_t__ unlikely (int) ;
 int value_is_zinit (char const*) ;

__attribute__((used)) static inline void statsd_process_gauge(STATSD_METRIC *m, const char *value, const char *sampling) {
    if(!is_metric_useful_for_collection(m)) return;

    if(unlikely(!value || !*value)) {
        error("STATSD: metric '%s' of type gauge, with empty value is ignored.", m->name);
        return;
    }

    if(unlikely(m->reset)) {

        statsd_reset_metric(m);
    }

    if(unlikely(value_is_zinit(value))) {

    }
    else {
        if (unlikely(*value == '+' || *value == '-'))
            m->gauge.value += statsd_parse_float(value, 1.0) / statsd_parse_sampling_rate(sampling);
        else
            m->gauge.value = statsd_parse_float(value, 1.0);

        m->events++;
        m->count++;
    }
}
