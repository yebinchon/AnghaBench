
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_19__ {int decimal_detail; } ;
struct TYPE_18__ {int name; } ;
struct TYPE_17__ {char* id; int dimensions_linked_count; scalar_t__ st; } ;
struct TYPE_16__ {int value_type; int algorithm; int name; int divisor; scalar_t__ rd; int multiplier; int * value_ptr; } ;
struct TYPE_14__ {TYPE_1__* ext; } ;
struct TYPE_15__ {scalar_t__ type; int name; int options; int last; TYPE_2__ histogram; int events; } ;
struct TYPE_13__ {int last_stddev; int last_percentile; int last_median; int last_max; int last_min; int last_sum; } ;
typedef TYPE_3__ STATSD_METRIC ;
typedef TYPE_4__ STATSD_APP_CHART_DIM ;
typedef TYPE_5__ STATSD_APP_CHART ;
typedef TYPE_6__ STATSD_APP ;


 int D_STATSD ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int RRD_ALGORITHM_INCREMENTAL ;
 int STATSD_METRIC_OPTION_USED_IN_APPS ;
 scalar_t__ STATSD_METRIC_TYPE_GAUGE ;
 scalar_t__ STATSD_METRIC_TYPE_HISTOGRAM ;
 scalar_t__ STATSD_METRIC_TYPE_TIMER ;
 int debug (int ,char*,int ,scalar_t__,int ,char*,int ,int ) ;
 int error (char*,int ,char*,int ,int ) ;
 int rrd_algorithm_name (int ) ;
 int rrddim_set_algorithm (scalar_t__,scalar_t__,int ) ;
 int rrddim_set_divisor (scalar_t__,scalar_t__,int ) ;
 int rrddim_set_multiplier (scalar_t__,scalar_t__,int ) ;
 TYPE_8__ statsd ;
 int statsd_algorithm_for_metric (TYPE_3__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void link_metric_to_app_dimension(STATSD_APP *app, STATSD_METRIC *m, STATSD_APP_CHART *chart, STATSD_APP_CHART_DIM *dim) {
    if(dim->value_type == 135) {
        dim->value_ptr = &m->events;
        dim->algorithm = RRD_ALGORITHM_INCREMENTAL;
    }
    else if(m->type == STATSD_METRIC_TYPE_HISTOGRAM || m->type == STATSD_METRIC_TYPE_TIMER) {
        dim->algorithm = RRD_ALGORITHM_ABSOLUTE;
        dim->divisor *= statsd.decimal_detail;

        switch(dim->value_type) {
            case 135:

                break;

            case 134:
            case 136:
                dim->value_ptr = &m->last;
                break;

            case 128:
                dim->value_ptr = &m->histogram.ext->last_sum;
                break;

            case 131:
                dim->value_ptr = &m->histogram.ext->last_min;
                break;

            case 133:
                dim->value_ptr = &m->histogram.ext->last_max;
                break;

            case 132:
                dim->value_ptr = &m->histogram.ext->last_median;
                break;

            case 130:
                dim->value_ptr = &m->histogram.ext->last_percentile;
                break;

            case 129:
                dim->value_ptr = &m->histogram.ext->last_stddev;
                break;
        }
    }
    else {
        if (dim->value_type != 134)
            error("STATSD: unsupported value type for dimension '%s' of chart '%s' of app '%s' on metric '%s'", dim->name, chart->id, app->name, m->name);

        dim->value_ptr = &m->last;
        dim->algorithm = statsd_algorithm_for_metric(m);

        if(m->type == STATSD_METRIC_TYPE_GAUGE)
            dim->divisor *= statsd.decimal_detail;
    }

    if(unlikely(chart->st && dim->rd)) {
        rrddim_set_algorithm(chart->st, dim->rd, dim->algorithm);
        rrddim_set_multiplier(chart->st, dim->rd, dim->multiplier);
        rrddim_set_divisor(chart->st, dim->rd, dim->divisor);
    }

    chart->dimensions_linked_count++;
    m->options |= STATSD_METRIC_OPTION_USED_IN_APPS;
    debug(D_STATSD, "metric '%s' of type %u linked with app '%s', chart '%s', dimension '%s', algorithm '%s'", m->name, m->type, app->name, chart->id, dim->name, rrd_algorithm_name(dim->algorithm));
}
