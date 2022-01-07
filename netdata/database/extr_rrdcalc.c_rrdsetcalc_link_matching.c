
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int rrdset; struct TYPE_11__* next; } ;
struct TYPE_10__ {TYPE_3__* alarms; } ;
struct TYPE_9__ {TYPE_2__* rrdhost; } ;
typedef TYPE_1__ RRDSET ;
typedef TYPE_2__ RRDHOST ;
typedef TYPE_3__ RRDCALC ;


 int rrdcalc_is_matching_this_rrdset (TYPE_3__*,TYPE_1__*) ;
 int rrdsetcalc_link (TYPE_1__*,TYPE_3__*) ;
 scalar_t__ unlikely (int ) ;

inline void rrdsetcalc_link_matching(RRDSET *st) {
    RRDHOST *host = st->rrdhost;


    RRDCALC *rc;
    for(rc = host->alarms; rc ; rc = rc->next) {
        if(unlikely(rc->rrdset))
            continue;

        if(unlikely(rrdcalc_is_matching_this_rrdset(rc, st)))
            rrdsetcalc_link(st, rc);
    }
}
