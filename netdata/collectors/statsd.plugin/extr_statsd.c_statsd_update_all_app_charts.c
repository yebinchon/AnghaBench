
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* apps; } ;
struct TYPE_7__ {TYPE_1__* charts; struct TYPE_7__* next; } ;
struct TYPE_6__ {int dimensions_linked_count; struct TYPE_6__* next; } ;
typedef TYPE_1__ STATSD_APP_CHART ;
typedef TYPE_2__ STATSD_APP ;


 TYPE_5__ statsd ;
 int statsd_update_app_chart (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void statsd_update_all_app_charts(void) {


    STATSD_APP *app;
    for(app = statsd.apps; app ;app = app->next) {


        STATSD_APP_CHART *chart;
        for(chart = app->charts; chart ;chart = chart->next) {
            if(unlikely(chart->dimensions_linked_count)) {
                statsd_update_app_chart(app, chart);
            }
        }
    }


}
