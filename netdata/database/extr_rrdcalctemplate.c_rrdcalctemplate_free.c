
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int spdim; struct TYPE_4__* foreachdim; struct TYPE_4__* dimensions; struct TYPE_4__* info; struct TYPE_4__* units; struct TYPE_4__* source; struct TYPE_4__* context; struct TYPE_4__* recipient; struct TYPE_4__* exec; struct TYPE_4__* name; int family_pattern; struct TYPE_4__* family_match; int critical; int warning; int calculation; } ;
typedef TYPE_1__ RRDCALCTEMPLATE ;


 int expression_free (int ) ;
 int freez (TYPE_1__*) ;
 int simple_pattern_free (int ) ;
 scalar_t__ unlikely (int) ;

inline void rrdcalctemplate_free(RRDCALCTEMPLATE *rt) {
    if(unlikely(!rt)) return;

    expression_free(rt->calculation);
    expression_free(rt->warning);
    expression_free(rt->critical);

    freez(rt->family_match);
    simple_pattern_free(rt->family_pattern);

    freez(rt->name);
    freez(rt->exec);
    freez(rt->recipient);
    freez(rt->context);
    freez(rt->source);
    freez(rt->units);
    freez(rt->info);
    freez(rt->dimensions);
    freez(rt->foreachdim);
    simple_pattern_free(rt->spdim);
    freez(rt);
}
