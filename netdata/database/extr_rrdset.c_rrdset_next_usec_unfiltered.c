
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
struct TYPE_6__ {int tv_sec; } ;
struct TYPE_7__ {scalar_t__ usec_since_last_update; TYPE_1__ last_collected_time; } ;
typedef TYPE_2__ RRDSET ;


 int RRDSET_FLAG_SYNC_CLOCK ;
 scalar_t__ rrdset_flag_check_noatomic (TYPE_2__*,int ) ;
 int rrdset_next_usec (TYPE_2__*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

inline void rrdset_next_usec_unfiltered(RRDSET *st, usec_t microseconds) {
    if(unlikely(!st->last_collected_time.tv_sec || !microseconds || (rrdset_flag_check_noatomic(st, RRDSET_FLAG_SYNC_CLOCK)))) {

        rrdset_next_usec(st, microseconds);
        return;
    }

    st->usec_since_last_update = microseconds;
}
