
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int calculated_number ;
struct TYPE_9__ {TYPE_2__* rrdset; } ;
struct TYPE_8__ {int rrdvar_root_index; } ;
struct TYPE_7__ {TYPE_1__* rrdfamily; int rrdvar_root_index; TYPE_3__* rrdhost; } ;
struct TYPE_6__ {int rrdvar_root_index; } ;
typedef int RRDVAR ;
typedef TYPE_2__ RRDSET ;
typedef TYPE_3__ RRDHOST ;
typedef TYPE_4__ RRDCALC ;


 int rrdvar2number (int *) ;
 int * rrdvar_index_find (int *,char const*,int ) ;

int health_variable_lookup(const char *variable, uint32_t hash, RRDCALC *rc, calculated_number *result) {
    RRDSET *st = rc->rrdset;
    if(!st) return 0;

    RRDHOST *host = st->rrdhost;
    RRDVAR *rv;

    rv = rrdvar_index_find(&st->rrdvar_root_index, variable, hash);
    if(rv) {
        *result = rrdvar2number(rv);
        return 1;
    }

    rv = rrdvar_index_find(&st->rrdfamily->rrdvar_root_index, variable, hash);
    if(rv) {
        *result = rrdvar2number(rv);
        return 1;
    }

    rv = rrdvar_index_find(&host->rrdvar_root_index, variable, hash);
    if(rv) {
        *result = rrdvar2number(rv);
        return 1;
    }

    return 0;
}
