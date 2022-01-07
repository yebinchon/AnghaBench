
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
 int * rrdset_index_find_name (TYPE_1__*,char const*,int ) ;

inline RRDSET *rrdset_find_byname(RRDHOST *host, const char *name) {
    debug(D_RRD_CALLS, "rrdset_find_byname() for chart '%s' in host '%s'", name, host->hostname);
    RRDSET *st = rrdset_index_find_name(host, name, 0);
    return(st);
}
