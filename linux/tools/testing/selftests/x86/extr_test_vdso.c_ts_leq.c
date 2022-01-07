
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;



__attribute__((used)) static bool ts_leq(const struct timespec *a, const struct timespec *b)
{
 if (a->tv_sec != b->tv_sec)
  return a->tv_sec < b->tv_sec;
 else
  return a->tv_nsec <= b->tv_nsec;
}
