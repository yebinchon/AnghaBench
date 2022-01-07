
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int tb_low; int tb_high; } ;
typedef TYPE_1__ timebasestruct_t ;
struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;


 int CLOCK_TYPE ;
 scalar_t__ OPENSSL_rdtsc () ;
 int TIMEBASE_SZ ;
 scalar_t__ TWO32TO64 (int ,int ) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 scalar_t__ gethrtime () ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;
 int read_wall_time (TYPE_1__*,int ) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static uint64_t get_timer_bits(void)
{
    uint64_t res = OPENSSL_rdtsc();

    if (res != 0)
        return res;
    {
        struct timeval tv;

        if (gettimeofday(&tv, ((void*)0)) == 0)
            return TWO32TO64(tv.tv_sec, tv.tv_usec);
    }

    return time(((void*)0));
}
