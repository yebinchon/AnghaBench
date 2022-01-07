
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned long tv_sec; unsigned long tv_nsec; } ;



__attribute__((used)) static inline void add_ms_to_ts(struct timespec *ts, unsigned long milliseconds)
{
 ts->tv_sec += milliseconds / 1000;
 ts->tv_nsec += (milliseconds % 1000) * 1000000;
 if (ts->tv_nsec > 1000000000) {
  ts->tv_sec += 1;
  ts->tv_nsec -= 1000000000;
 }
}
