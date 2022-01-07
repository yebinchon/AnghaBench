
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_sets; } ;
typedef TYPE_1__ PREFIX_STATS ;


 int STATS_LOCK () ;
 int STATS_UNLOCK () ;
 TYPE_1__* stats_prefix_find (char const*,size_t const) ;

void stats_prefix_record_set(const char *key, const size_t nkey) {
    PREFIX_STATS *pfs;

    STATS_LOCK();
    pfs = stats_prefix_find(key, nkey);
    if (((void*)0) != pfs) {
        pfs->num_sets++;
    }
    STATS_UNLOCK();
}
