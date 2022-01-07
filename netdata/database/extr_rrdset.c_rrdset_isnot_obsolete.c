
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RRDSET ;


 int RRDSET_FLAG_OBSOLETE ;
 int RRDSET_FLAG_UPSTREAM_EXPOSED ;
 int rrdset_flag_check (int *,int ) ;
 int rrdset_flag_clear (int *,int ) ;
 scalar_t__ unlikely (int ) ;

inline void rrdset_isnot_obsolete(RRDSET *st) {
    if(unlikely((rrdset_flag_check(st, RRDSET_FLAG_OBSOLETE)))) {
        rrdset_flag_clear(st, RRDSET_FLAG_OBSOLETE);
        rrdset_flag_clear(st, RRDSET_FLAG_UPSTREAM_EXPOSED);



    }
}
