
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int collected_number ;
struct TYPE_7__ {int hostname; } ;
struct TYPE_6__ {char* name; int id; TYPE_2__* rrdhost; } ;
typedef TYPE_1__ RRDSET ;
typedef TYPE_2__ RRDHOST ;
typedef int RRDDIM ;


 int error (char*,char const*,char*,int ,int ) ;
 int * rrddim_find (TYPE_1__*,char const*) ;
 int rrddim_set_by_pointer (TYPE_1__*,int *,int ) ;
 scalar_t__ unlikely (int) ;

collected_number rrddim_set(RRDSET *st, const char *id, collected_number value) {
    RRDHOST *host = st->rrdhost;
    RRDDIM *rd = rrddim_find(st, id);
    if(unlikely(!rd)) {
        error("Cannot find dimension with id '%s' on stats '%s' (%s) on host '%s'.", id, st->name, st->id, host->hostname);
        return 0;
    }

    return rrddim_set_by_pointer(st, rd, value);
}
