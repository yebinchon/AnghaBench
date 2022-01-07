
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ algorithm; scalar_t__ exposed; int name; } ;
struct TYPE_7__ {int id; } ;
typedef scalar_t__ RRD_ALGORITHM ;
typedef TYPE_1__ RRDSET ;
typedef TYPE_2__ RRDDIM ;


 int D_RRD_CALLS ;
 int RRDSET_FLAG_HOMOGENEOUS_CHECK ;
 int RRDSET_FLAG_UPSTREAM_EXPOSED ;
 int debug (int ,char*,int ,int ,int ,int ) ;
 int rrd_algorithm_name (scalar_t__) ;
 int rrdset_flag_clear (TYPE_1__*,int ) ;
 int rrdset_flag_set (TYPE_1__*,int ) ;
 scalar_t__ unlikely (int) ;

inline int rrddim_set_algorithm(RRDSET *st, RRDDIM *rd, RRD_ALGORITHM algorithm) {
    if(unlikely(rd->algorithm == algorithm))
        return 0;

    debug(D_RRD_CALLS, "Updating algorithm of dimension '%s/%s' from %s to %s", st->id, rd->name, rrd_algorithm_name(rd->algorithm), rrd_algorithm_name(algorithm));
    rd->algorithm = algorithm;
    rd->exposed = 0;
    rrdset_flag_set(st, RRDSET_FLAG_HOMOGENEOUS_CHECK);
    rrdset_flag_clear(st, RRDSET_FLAG_UPSTREAM_EXPOSED);
    return 1;
}
