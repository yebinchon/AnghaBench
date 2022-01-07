
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long usec_t ;
struct TYPE_3__ {unsigned long long monotonic; } ;
typedef TYPE_1__ heartbeat_t ;


 unsigned long long now_monotonic_usec () ;

inline usec_t heartbeat_monotonic_dt_to_now_usec(heartbeat_t *hb) {
    if(!hb || !hb->monotonic) return 0ULL;
    return now_monotonic_usec() - hb->monotonic;
}
