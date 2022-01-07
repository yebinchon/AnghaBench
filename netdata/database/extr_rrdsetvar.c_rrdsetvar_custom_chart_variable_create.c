
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int calculated_number ;
struct TYPE_12__ {int hostname; } ;
struct TYPE_11__ {char* id; TYPE_1__* variables; TYPE_3__* rrdhost; } ;
struct TYPE_10__ {scalar_t__ hash; int options; int variable; struct TYPE_10__* next; } ;
typedef TYPE_1__ RRDSETVAR ;
typedef TYPE_2__ RRDSET ;
typedef TYPE_3__ RRDHOST ;


 int NAN ;
 int RRDVAR_OPTION_ALLOCATED ;
 int RRDVAR_OPTION_CUSTOM_CHART_VAR ;
 int RRDVAR_TYPE_CALCULATED ;
 int error (char*,char*,char*,int ) ;
 int freez (char*) ;
 int * mallocz (int) ;
 int rrdset_unlock (TYPE_2__*) ;
 int rrdset_wrlock (TYPE_2__*) ;
 TYPE_1__* rrdsetvar_create (TYPE_2__*,char*,int ,int *,int) ;
 int rrdvar_fix_name (char*) ;
 scalar_t__ simple_hash (char*) ;
 scalar_t__ strcmp (char*,int ) ;
 char* strdupz (char const*) ;

RRDSETVAR *rrdsetvar_custom_chart_variable_create(RRDSET *st, const char *name) {
    RRDHOST *host = st->rrdhost;

    char *n = strdupz(name);
    rrdvar_fix_name(n);
    uint32_t hash = simple_hash(n);

    rrdset_wrlock(st);


    RRDSETVAR *rs;
    for(rs = st->variables; rs ; rs = rs->next) {
        if(hash == rs->hash && strcmp(n, rs->variable) == 0) {
            rrdset_unlock(st);
            if(rs->options & RRDVAR_OPTION_CUSTOM_CHART_VAR) {
                freez(n);
                return rs;
            }
            else {
                error("RRDSETVAR: custom variable '%s' on chart '%s' of host '%s', conflicts with an internal chart variable", n, st->id, host->hostname);
                freez(n);
                return ((void*)0);
            }
        }
    }



    calculated_number *v = mallocz(sizeof(calculated_number));
    *v = NAN;

    rs = rrdsetvar_create(st, n, RRDVAR_TYPE_CALCULATED, v, RRDVAR_OPTION_ALLOCATED|RRDVAR_OPTION_CUSTOM_CHART_VAR);
    rrdset_unlock(st);

    freez(n);
    return rs;
}
