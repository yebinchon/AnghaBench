
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ hash_chart; int chart; } ;
struct TYPE_5__ {scalar_t__ hash; scalar_t__ hash_name; int name; int id; } ;
typedef TYPE_1__ RRDSET ;
typedef TYPE_2__ RRDCALC ;


 int strcmp (int ,int ) ;

__attribute__((used)) static inline int rrdcalc_is_matching_this_rrdset(RRDCALC *rc, RRDSET *st) {
    if( (rc->hash_chart == st->hash && !strcmp(rc->chart, st->id)) ||
            (rc->hash_chart == st->hash_name && !strcmp(rc->chart, st->name)))
        return 1;

    return 0;
}
