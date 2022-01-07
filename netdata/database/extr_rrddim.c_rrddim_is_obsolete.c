
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int name; } ;
struct TYPE_7__ {int name; } ;
typedef TYPE_1__ RRDSET ;
typedef TYPE_2__ RRDDIM ;


 int D_RRD_CALLS ;
 int RRDDIM_FLAG_OBSOLETE ;
 int RRDSET_FLAG_OBSOLETE_DIMENSIONS ;
 int debug (int ,char*,int ,int ) ;
 int rrddim_flag_set (TYPE_2__*,int ) ;
 int rrdset_flag_set (TYPE_1__*,int ) ;

inline void rrddim_is_obsolete(RRDSET *st, RRDDIM *rd) {
    debug(D_RRD_CALLS, "rrddim_is_obsolete() for chart %s, dimension %s", st->name, rd->name);

    rrddim_flag_set(rd, RRDDIM_FLAG_OBSOLETE);
    rrdset_flag_set(st, RRDSET_FLAG_OBSOLETE_DIMENSIONS);
}
