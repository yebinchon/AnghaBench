
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ hash; int name; struct TYPE_6__* rrdset_next; } ;
struct TYPE_5__ {TYPE_2__* alarms; } ;
typedef TYPE_1__ RRDSET ;
typedef TYPE_2__ RRDCALC ;


 scalar_t__ simple_hash (char const*) ;
 int strcmp (int ,char const*) ;
 scalar_t__ unlikely (int) ;

RRDCALC *rrdcalc_find(RRDSET *st, const char *name) {
    RRDCALC *rc;
    uint32_t hash = simple_hash(name);

    for( rc = st->alarms; rc ; rc = rc->rrdset_next ) {
        if(unlikely(rc->hash == hash && !strcmp(rc->name, name)))
            return rc;
    }

    return ((void*)0);
}
