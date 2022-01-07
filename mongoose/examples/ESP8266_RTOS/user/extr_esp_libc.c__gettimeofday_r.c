
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef scalar_t__ uint32_t ;
struct timeval {unsigned long long tv_sec; unsigned long long tv_usec; } ;
struct _reent {int dummy; } ;


 scalar_t__ system_get_time () ;

int _gettimeofday_r(struct _reent *r, struct timeval *tp, void *tzp) {
  static uint32_t prev_time = 0;
  static uint32_t num_overflows = 0;
  uint32_t time = system_get_time();
  uint64_t time64 = time;
  if (prev_time > 0 && time < prev_time) num_overflows++;
  time64 += (((uint64_t) num_overflows) * (1ULL << 32));
  tp->tv_sec = time64 / 1000000ULL;
  tp->tv_usec = time64 % 1000000ULL;
  prev_time = time;
  return 0;
  (void) r;
  (void) tzp;
}
