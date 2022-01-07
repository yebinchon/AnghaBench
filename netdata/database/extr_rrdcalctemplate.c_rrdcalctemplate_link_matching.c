
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* next; } ;
struct TYPE_9__ {TYPE_3__* alarms_template_with_foreach; TYPE_3__* templates; } ;
struct TYPE_8__ {TYPE_2__* rrdhost; } ;
typedef TYPE_1__ RRDSET ;
typedef TYPE_2__ RRDHOST ;
typedef TYPE_3__ RRDCALCTEMPLATE ;


 int rrdcalctemplate_link_matching_test (TYPE_3__*,TYPE_1__*,TYPE_2__*) ;

void rrdcalctemplate_link_matching(RRDSET *st) {
    RRDHOST *host = st->rrdhost;
    RRDCALCTEMPLATE *rt;

    for(rt = host->templates; rt ; rt = rt->next) {
        rrdcalctemplate_link_matching_test(rt, st, host);
    }

    for(rt = host->alarms_template_with_foreach; rt ; rt = rt->next) {
        rrdcalctemplate_link_matching_test(rt, st, host);
    }
}
