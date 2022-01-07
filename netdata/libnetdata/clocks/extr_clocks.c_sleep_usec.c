
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int time_t ;
typedef int suseconds_t ;
struct timespec {int tv_nsec; int tv_sec; } ;


 int D_SYSTEM ;
 scalar_t__ EINTR ;
 scalar_t__ EINVAL ;
 int debug (int ,char*,int) ;
 scalar_t__ errno ;
 int error (char*,int) ;
 scalar_t__ likely (int) ;
 int nanosleep (struct timespec*,struct timespec*) ;
 scalar_t__ unlikely (int) ;
 int usleep (int) ;

int sleep_usec(usec_t usec) {




    struct timespec rem, req = {
            .tv_sec = (time_t) (usec / 1000000),
            .tv_nsec = (suseconds_t) ((usec % 1000000) * 1000)
    };

    while (nanosleep(&req, &rem) == -1) {
        if (likely(errno == EINTR)) {
            debug(D_SYSTEM, "nanosleep() interrupted (while sleeping for %llu microseconds).", usec);
            req.tv_sec = rem.tv_sec;
            req.tv_nsec = rem.tv_nsec;
        } else {
            error("Cannot nanosleep() for %llu microseconds.", usec);
            break;
        }
    }

    return 0;
}
