
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int CLOCK_MONOTONIC_COARSE ;
 int clock_gettime (int ,struct timespec*) ;
 int monotonic_clock_id ;

__attribute__((used)) __attribute__((constructor)) static void detect_fastest_monotonic_clock(void)
{
    struct timespec ts;

    if (!clock_gettime(CLOCK_MONOTONIC_COARSE, &ts))
        monotonic_clock_id = CLOCK_MONOTONIC_COARSE;
}
