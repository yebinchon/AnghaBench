
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;


 int CLOCK_MONOTONIC ;
 int clock_gettime (int ,struct timespec*) ;

uint64_t os_gettime_ns(void)
{
 struct timespec ts;
 clock_gettime(CLOCK_MONOTONIC, &ts);
 return ((uint64_t)ts.tv_sec * 1000000000ULL + (uint64_t)ts.tv_nsec);
}
