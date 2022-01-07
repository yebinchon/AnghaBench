
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ts ;
struct timespec {int tv_sec; int tv_nsec; } ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int memcpy (struct timespec*,struct timespec*,int) ;
 int nanosleep (struct timespec*,struct timespec*) ;

void
pixie_usleep(uint64_t microseconds)
{
    struct timespec ts;
    struct timespec remaining;
    int err;

    ts.tv_sec = microseconds/1000000;
    ts.tv_nsec = (microseconds%1000000) * 1000;

again:
    err = nanosleep(&ts, &remaining);
    if (err == -1 && errno == EINTR) {
        memcpy(&ts, &remaining, sizeof(ts));
        goto again;
    }


}
