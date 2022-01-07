
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;



__attribute__((used)) static double tv_diff(const struct timeval *a, const struct timeval *b)
{
 return (double)(a->tv_sec - b->tv_sec) +
  (double)((int)a->tv_usec - (int)b->tv_usec) * 1e-6;
}
