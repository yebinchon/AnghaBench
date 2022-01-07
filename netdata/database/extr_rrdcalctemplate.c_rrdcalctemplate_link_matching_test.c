
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {char* chart; char* name; int foreachdim; TYPE_1__* rrdset; } ;
struct TYPE_13__ {scalar_t__ hash_context; int name; int family_pattern; int context; } ;
struct TYPE_12__ {int hostname; } ;
struct TYPE_11__ {scalar_t__ hash_context; int id; int family; int context; } ;
typedef TYPE_1__ RRDSET ;
typedef TYPE_2__ RRDHOST ;
typedef TYPE_3__ RRDCALCTEMPLATE ;
typedef TYPE_4__ RRDCALC ;


 int error (char*,char*,char*,int ) ;
 int info (char*,int ,int ,int ) ;
 TYPE_4__* rrdcalc_create_from_template (TYPE_2__*,TYPE_3__*,int ) ;
 scalar_t__ simple_pattern_matches (int ,int ) ;
 int strcmp (int ,int ) ;
 scalar_t__ unlikely (int) ;

void rrdcalctemplate_link_matching_test(RRDCALCTEMPLATE *rt, RRDSET *st, RRDHOST *host ) {
    if(rt->hash_context == st->hash_context && !strcmp(rt->context, st->context)
       && (!rt->family_pattern || simple_pattern_matches(rt->family_pattern, st->family))) {
        RRDCALC *rc = rrdcalc_create_from_template(host, rt, st->id);
        if(unlikely(!rc))
            info("Health tried to create alarm from template '%s' on chart '%s' of host '%s', but it failed", rt->name, st->id, host->hostname);




    }
}
