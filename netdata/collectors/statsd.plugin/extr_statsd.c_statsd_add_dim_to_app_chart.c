
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int st; TYPE_1__* dimensions; } ;
struct TYPE_7__ {scalar_t__ metric_hash; char* metric; scalar_t__ value_type; TYPE_3__* rd; int flags; int algorithm; int divisor; int multiplier; int name; struct TYPE_7__* next; } ;
typedef TYPE_1__ STATSD_APP_CHART_DIM ;
typedef TYPE_2__ STATSD_APP_CHART ;
typedef int STATSD_APP ;
typedef TYPE_3__ RRDDIM ;


 int RRDDIM_FLAG_NONE ;
 void* rrddim_add (int ,char*,int ,int ,int ,int ) ;
 int snprintfz (char*,size_t,char*,char*,int ,...) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 int valuetype2string (scalar_t__) ;

__attribute__((used)) static inline RRDDIM *statsd_add_dim_to_app_chart(STATSD_APP *app, STATSD_APP_CHART *chart, STATSD_APP_CHART_DIM *dim) {
    (void)app;



    STATSD_APP_CHART_DIM *tdim;
    size_t count_same_metric = 0, count_same_metric_value_type = 0;
    size_t pos_same_metric_value_type = 0;

    for (tdim = chart->dimensions; tdim && tdim->next; tdim = tdim->next) {
        if (dim->metric_hash == tdim->metric_hash && !strcmp(dim->metric, tdim->metric)) {
            count_same_metric++;

            if(dim->value_type == tdim->value_type) {
                count_same_metric_value_type++;
                if (tdim == dim)
                    pos_same_metric_value_type = count_same_metric_value_type;
            }
        }
    }

    if(count_same_metric > 1) {


        size_t len = strlen(dim->metric) + 100;
        char metric[ len + 1 ];

        if(count_same_metric_value_type > 1) {

            snprintfz(metric, len, "%s_%s%zu", dim->metric, valuetype2string(dim->value_type), pos_same_metric_value_type);
        }
        else {

            snprintfz(metric, len, "%s_%s", dim->metric, valuetype2string(dim->value_type));
        }

        dim->rd = rrddim_add(chart->st, metric, dim->name, dim->multiplier, dim->divisor, dim->algorithm);
        if(dim->flags != RRDDIM_FLAG_NONE) dim->rd->flags |= dim->flags;
        return dim->rd;
    }

    dim->rd = rrddim_add(chart->st, dim->metric, dim->name, dim->multiplier, dim->divisor, dim->algorithm);
    if(dim->flags != RRDDIM_FLAG_NONE) dim->rd->flags |= dim->flags;
    return dim->rd;
}
