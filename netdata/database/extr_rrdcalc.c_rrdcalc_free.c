
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int spdim; struct TYPE_4__* info; struct TYPE_4__* units; struct TYPE_4__* source; struct TYPE_4__* recipient; struct TYPE_4__* exec; struct TYPE_4__* foreachdim; struct TYPE_4__* dimensions; struct TYPE_4__* family; struct TYPE_4__* chart; struct TYPE_4__* name; int critical; int warning; int calculation; } ;
typedef TYPE_1__ RRDCALC ;


 int expression_free (int ) ;
 int freez (TYPE_1__*) ;
 int simple_pattern_free (int ) ;
 scalar_t__ unlikely (int) ;

void rrdcalc_free(RRDCALC *rc) {
    if(unlikely(!rc)) return;

    expression_free(rc->calculation);
    expression_free(rc->warning);
    expression_free(rc->critical);

    freez(rc->name);
    freez(rc->chart);
    freez(rc->family);
    freez(rc->dimensions);
    freez(rc->foreachdim);
    freez(rc->exec);
    freez(rc->recipient);
    freez(rc->source);
    freez(rc->units);
    freez(rc->info);
    simple_pattern_free(rc->spdim);
    freez(rc);
}
