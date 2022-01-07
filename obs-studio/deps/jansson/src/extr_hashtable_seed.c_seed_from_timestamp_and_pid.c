
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 scalar_t__ GetCurrentProcessId () ;
 scalar_t__ getpid () ;
 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int seed_from_timestamp_and_pid(uint32_t *seed) {







    *seed = (uint32_t)time(((void*)0));
    return 0;
}
