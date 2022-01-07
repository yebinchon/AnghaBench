
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ histogram_increase_step; } ;
struct TYPE_9__ {TYPE_1__* ext; } ;
struct TYPE_10__ {int reset; int count; int events; TYPE_2__ histogram; } ;
struct TYPE_8__ {int used; int size; double* values; int mutex; } ;
typedef TYPE_3__ STATSD_METRIC ;
typedef double LONG_DOUBLE ;


 int error (char*,char const*) ;
 int is_metric_useful_for_collection (TYPE_3__*) ;
 int isgreater (double,double) ;
 int isless (double,double) ;
 long long llrintl (double) ;
 int netdata_mutex_lock (int *) ;
 int netdata_mutex_unlock (int *) ;
 double* reallocz (double*,int) ;
 TYPE_6__ statsd ;
 double statsd_parse_float (char const*,double) ;
 double statsd_parse_sampling_rate (char const*) ;
 int statsd_reset_metric (TYPE_3__*) ;
 scalar_t__ unlikely (int) ;
 int value_is_zinit (char const*) ;

__attribute__((used)) static inline void statsd_process_histogram_or_timer(STATSD_METRIC *m, const char *value, const char *sampling, const char *type) {
    if(!is_metric_useful_for_collection(m)) return;

    if(unlikely(!value || !*value)) {
        error("STATSD: metric of type %s, with empty value is ignored.", type);
        return;
    }

    if(unlikely(m->reset)) {
        m->histogram.ext->used = 0;
        statsd_reset_metric(m);
    }

    if(unlikely(value_is_zinit(value))) {

    }
    else {
        LONG_DOUBLE v = statsd_parse_float(value, 1.0);
        LONG_DOUBLE sampling_rate = statsd_parse_sampling_rate(sampling);
        if(unlikely(isless(sampling_rate, 0.01))) sampling_rate = 0.01;
        if(unlikely(isgreater(sampling_rate, 1.0))) sampling_rate = 1.0;

        long long samples = llrintl(1.0 / sampling_rate);
        while(samples-- > 0) {

            if(unlikely(m->histogram.ext->used == m->histogram.ext->size)) {
                netdata_mutex_lock(&m->histogram.ext->mutex);
                m->histogram.ext->size += statsd.histogram_increase_step;
                m->histogram.ext->values = reallocz(m->histogram.ext->values, sizeof(LONG_DOUBLE) * m->histogram.ext->size);
                netdata_mutex_unlock(&m->histogram.ext->mutex);
            }

            m->histogram.ext->values[m->histogram.ext->used++] = v;
        }

        m->events++;
        m->count++;
    }
}
