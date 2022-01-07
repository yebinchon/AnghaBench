
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int value; } ;
struct TYPE_7__ {int count; int events; TYPE_1__ counter; int reset; } ;
typedef TYPE_2__ STATSD_METRIC ;
typedef int LONG_DOUBLE ;


 int is_metric_useful_for_collection (TYPE_2__*) ;
 scalar_t__ llrintl (int) ;
 scalar_t__ statsd_parse_int (char const*,int) ;
 int statsd_parse_sampling_rate (char const*) ;
 int statsd_reset_metric (TYPE_2__*) ;
 scalar_t__ unlikely (int ) ;
 int value_is_zinit (char const*) ;

__attribute__((used)) static inline void statsd_process_counter_or_meter(STATSD_METRIC *m, const char *value, const char *sampling) {
    if(!is_metric_useful_for_collection(m)) return;



    if(unlikely(m->reset)) statsd_reset_metric(m);

    if(unlikely(value_is_zinit(value))) {

    }
    else {
        m->counter.value += llrintl((LONG_DOUBLE) statsd_parse_int(value, 1) / statsd_parse_sampling_rate(sampling));

        m->events++;
        m->count++;
    }
}
