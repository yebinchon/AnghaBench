
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* variables; int name; int id; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ RRDSETVAR ;
typedef TYPE_2__ RRDSET ;


 int D_VARIABLES ;
 int debug (int ,char*,int ,int ) ;
 int rrdsetcalc_link_matching (TYPE_2__*) ;
 int rrdsetvar_create_variables (TYPE_1__*) ;

void rrdsetvar_rename_all(RRDSET *st) {
    debug(D_VARIABLES, "RRDSETVAR rename for chart id '%s' name '%s'", st->id, st->name);

    RRDSETVAR *rs;
    for(rs = st->variables; rs ; rs = rs->next)
        rrdsetvar_create_variables(rs);

    rrdsetcalc_link_matching(st);
}
