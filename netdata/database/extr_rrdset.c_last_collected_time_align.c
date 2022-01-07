
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tv_sec; int tv_usec; } ;
struct TYPE_6__ {int update_every; TYPE_1__ last_collected_time; } ;
typedef TYPE_2__ RRDSET ;


 int RRDSET_FLAG_STORE_FIRST ;
 int rrdset_flag_check (TYPE_2__*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void last_collected_time_align(RRDSET *st) {
    st->last_collected_time.tv_sec -= st->last_collected_time.tv_sec % st->update_every;

    if(unlikely(rrdset_flag_check(st, RRDSET_FLAG_STORE_FIRST)))
        st->last_collected_time.tv_usec = 0;
    else
        st->last_collected_time.tv_usec = 500000;
}
