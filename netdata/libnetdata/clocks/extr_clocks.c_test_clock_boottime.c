
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int CLOCK_BOOTTIME ;
 scalar_t__ EINVAL ;
 scalar_t__ clock_boottime_valid ;
 int clock_gettime (int ,struct timespec*) ;
 scalar_t__ errno ;

void test_clock_boottime(void) {
    struct timespec ts;
    if(clock_gettime(CLOCK_BOOTTIME, &ts) == -1 && errno == EINVAL)
        clock_boottime_valid = 0;
}
