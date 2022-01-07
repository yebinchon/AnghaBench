
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ warn_repeat_every; scalar_t__ crit_repeat_every; } ;
typedef TYPE_1__ RRDCALC ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int rrdcalc_isrepeating(RRDCALC *rc) {
    if (unlikely(rc->warn_repeat_every > 0 || rc->crit_repeat_every > 0)) {
        return 1;
    }
    return 0;
}
