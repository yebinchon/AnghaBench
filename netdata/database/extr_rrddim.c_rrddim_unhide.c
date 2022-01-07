
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hostname; } ;
struct TYPE_5__ {char* name; int id; TYPE_2__* rrdhost; } ;
typedef TYPE_1__ RRDSET ;
typedef TYPE_2__ RRDHOST ;
typedef int RRDDIM ;


 int D_RRD_CALLS ;
 int RRDDIM_FLAG_HIDDEN ;
 int debug (int ,char*,char*,char const*) ;
 int error (char*,char const*,char*,int ,int ) ;
 int * rrddim_find (TYPE_1__*,char const*) ;
 int rrddim_flag_clear (int *,int ) ;
 scalar_t__ unlikely (int) ;

int rrddim_unhide(RRDSET *st, const char *id) {
    debug(D_RRD_CALLS, "rrddim_unhide() for chart %s, dimension %s", st->name, id);

    RRDHOST *host = st->rrdhost;
    RRDDIM *rd = rrddim_find(st, id);
    if(unlikely(!rd)) {
        error("Cannot find dimension with id '%s' on stats '%s' (%s) on host '%s'.", id, st->name, st->id, host->hostname);
        return 1;
    }

    rrddim_flag_clear(rd, RRDDIM_FLAG_HIDDEN);
    return 0;
}
