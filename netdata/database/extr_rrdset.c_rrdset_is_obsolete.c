
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RRDSET ;


 int RRDSET_FLAG_OBSOLETE ;
 int RRDSET_FLAG_UPSTREAM_EXPOSED ;
 int rrdset_flag_check (int *,int ) ;
 int rrdset_flag_clear (int *,int ) ;
 int rrdset_flag_set (int *,int ) ;
 int rrdset_push_chart_definition_now (int *) ;
 scalar_t__ unlikely (int) ;

inline void rrdset_is_obsolete(RRDSET *st) {
    if(unlikely(!(rrdset_flag_check(st, RRDSET_FLAG_OBSOLETE)))) {
        rrdset_flag_set(st, RRDSET_FLAG_OBSOLETE);
        rrdset_flag_clear(st, RRDSET_FLAG_UPSTREAM_EXPOSED);



        rrdset_push_chart_definition_now(st);
    }
}
