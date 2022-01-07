
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int tv_sec; } ;
struct TYPE_10__ {int counter_done; TYPE_1__ last_collected_time; } ;
typedef TYPE_2__ RRDSET ;


 int rrdset_done_push (TYPE_2__*) ;
 int rrdset_init_last_collected_time (TYPE_2__*) ;
 int rrdset_rdlock (TYPE_2__*) ;
 int rrdset_unlock (TYPE_2__*) ;
 int rrdset_update_last_collected_time (TYPE_2__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void rrdset_done_push_exclusive(RRDSET *st) {
    if(unlikely(!st->last_collected_time.tv_sec)) {


        rrdset_init_last_collected_time(st);
    }
    else {


        rrdset_update_last_collected_time(st);
    }

    st->counter_done++;

    rrdset_rdlock(st);
    rrdset_done_push(st);
    rrdset_unlock(st);
}
