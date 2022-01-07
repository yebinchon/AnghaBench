
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;



__attribute__((used)) static bool tv_leq(const struct timeval *a, const struct timeval *b)
{
 if (a->tv_sec != b->tv_sec)
  return a->tv_sec < b->tv_sec;
 else
  return a->tv_usec <= b->tv_usec;
}
