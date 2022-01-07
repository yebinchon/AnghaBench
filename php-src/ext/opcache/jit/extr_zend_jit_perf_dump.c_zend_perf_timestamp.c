
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;


 int CLOCK_MONOTONIC ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;

__attribute__((used)) static uint64_t zend_perf_timestamp(void)
{
 struct timespec ts;

 if (clock_gettime(CLOCK_MONOTONIC, &ts) != 0) {
  return 0;
 }
 return ((uint64_t)ts.tv_sec * 1000000000) + ts.tv_nsec;
}
