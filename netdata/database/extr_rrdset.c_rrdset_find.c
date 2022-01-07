
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hostname; } ;
typedef int RRDSET ;
typedef TYPE_1__ RRDHOST ;


 int D_RRD_CALLS ;
 int debug (int ,char*,char const*,int ) ;
 int * rrdset_index_find (TYPE_1__*,char const*,int ) ;

inline RRDSET *rrdset_find(RRDHOST *host, const char *id) {
    debug(D_RRD_CALLS, "rrdset_find() for chart '%s' in host '%s'", id, host->hostname);
    RRDSET *st = rrdset_index_find(host, id, 0);
    return(st);
}
