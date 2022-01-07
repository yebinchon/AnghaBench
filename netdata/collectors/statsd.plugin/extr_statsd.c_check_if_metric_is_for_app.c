
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {TYPE_4__* apps; } ;
struct TYPE_16__ {int default_options; scalar_t__ dict; TYPE_3__* charts; int name; int metrics; struct TYPE_16__* next; } ;
struct TYPE_15__ {TYPE_2__* dimensions; struct TYPE_15__* next; } ;
struct TYPE_14__ {int metric_pattern; char* name; scalar_t__ metric_hash; int metric; int value_ptr; int value_type; int flags; int divisor; int multiplier; struct TYPE_14__* next; } ;
struct TYPE_13__ {char* name; int options; scalar_t__ hash; } ;
typedef TYPE_1__ STATSD_METRIC ;
typedef int STATSD_INDEX ;
typedef TYPE_2__ STATSD_APP_CHART_DIM ;
typedef TYPE_3__ STATSD_APP_CHART ;
typedef TYPE_4__ STATSD_APP ;


 int D_STATSD ;
 int STATSD_METRIC_OPTION_PRIVATE_CHART_CHECKED ;
 int STATSD_METRIC_OPTION_PRIVATE_CHART_ENABLED ;
 int STATSD_METRIC_OPTION_SHOW_GAPS_WHEN_NOT_COLLECTED ;
 int add_dimension_to_app_chart (TYPE_4__*,TYPE_3__*,char*,char*,int ,int ,int ,int ) ;
 int debug (int ,char*,char*,int ) ;
 char* dictionary_get (scalar_t__,char*) ;
 scalar_t__ likely (char) ;
 int link_metric_to_app_dimension (TYPE_4__*,TYPE_1__*,TYPE_3__*,TYPE_2__*) ;
 int simple_pattern_matches (int ,char*) ;
 scalar_t__ simple_pattern_matches_extract (int,char*,char*,size_t) ;
 TYPE_5__ statsd ;
 int strcmp (int ,char*) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void check_if_metric_is_for_app(STATSD_INDEX *index, STATSD_METRIC *m) {
    (void)index;

    STATSD_APP *app;
    for(app = statsd.apps; app ;app = app->next) {
        if(unlikely(simple_pattern_matches(app->metrics, m->name))) {
            debug(D_STATSD, "metric '%s' matches app '%s'", m->name, app->name);



            if(app->default_options & STATSD_METRIC_OPTION_PRIVATE_CHART_ENABLED)
                m->options |= STATSD_METRIC_OPTION_PRIVATE_CHART_ENABLED;
            else
                m->options &= ~STATSD_METRIC_OPTION_PRIVATE_CHART_ENABLED;

            if(app->default_options & STATSD_METRIC_OPTION_SHOW_GAPS_WHEN_NOT_COLLECTED)
                m->options |= STATSD_METRIC_OPTION_SHOW_GAPS_WHEN_NOT_COLLECTED;
            else
                m->options &= ~STATSD_METRIC_OPTION_SHOW_GAPS_WHEN_NOT_COLLECTED;

            m->options |= STATSD_METRIC_OPTION_PRIVATE_CHART_CHECKED;


            STATSD_APP_CHART *chart;
            for(chart = app->charts; chart; chart = chart->next) {

                STATSD_APP_CHART_DIM *dim;
                for(dim = chart->dimensions; dim ; dim = dim->next) {
                    if(unlikely(dim->metric_pattern)) {
                        size_t dim_name_len = strlen(dim->name);
                        size_t wildcarded_len = dim_name_len + strlen(m->name) + 1;
                        char wildcarded[wildcarded_len];

                        strcpy(wildcarded, dim->name);
                        char *ws = &wildcarded[dim_name_len];

                        if(simple_pattern_matches_extract(dim->metric_pattern, m->name, ws, wildcarded_len - dim_name_len)) {

                            char *final_name = ((void*)0);

                            if(app->dict) {
                                if(likely(*wildcarded)) {

                                    final_name = dictionary_get(app->dict, wildcarded);
                                }

                                if(unlikely(!final_name)) {

                                    final_name = dictionary_get(app->dict, m->name);
                                }
                            }

                            if(unlikely(!final_name))
                                final_name = wildcarded;

                            add_dimension_to_app_chart(
                                    app
                                    , chart
                                    , m->name
                                    , final_name
                                    , dim->multiplier
                                    , dim->divisor
                                    , dim->flags
                                    , dim->value_type
                            );



                        }
                    }
                    else if(!dim->value_ptr && dim->metric_hash == m->hash && !strcmp(dim->metric, m->name)) {

                        link_metric_to_app_dimension(app, m, chart, dim);
                    }
                }

            }
        }
    }
}
