
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_3__ {int monotonic; unsigned long long realtime; } ;
typedef TYPE_1__ heartbeat_t ;


 scalar_t__ errno ;
 int error (char*,int) ;
 scalar_t__ likely (int) ;
 void* now_monotonic_usec () ;
 void* now_realtime_usec () ;
 int sleep_usec (int) ;
 scalar_t__ unlikely (int) ;

usec_t heartbeat_next(heartbeat_t *hb, usec_t tick) {
    heartbeat_t now;
    now.monotonic = now_monotonic_usec();
    now.realtime = now_realtime_usec();

    usec_t next_monotonic = now.monotonic - (now.monotonic % tick) + tick;

    while(now.monotonic < next_monotonic) {
        sleep_usec(next_monotonic - now.monotonic);
        now.monotonic = now_monotonic_usec();
        now.realtime = now_realtime_usec();
    }

    if(likely(hb->realtime != 0ULL)) {
        usec_t dt_monotonic = now.monotonic - hb->monotonic;
        usec_t dt_realtime = now.realtime - hb->realtime;

        hb->monotonic = now.monotonic;
        hb->realtime = now.realtime;

        if(unlikely(dt_monotonic >= tick + tick / 2)) {
            errno = 0;
            error("heartbeat missed %llu monotonic microseconds", dt_monotonic - tick);
        }

        return dt_realtime;
    }
    else {
        hb->monotonic = now.monotonic;
        hb->realtime = now.realtime;
        return 0ULL;
    }
}
