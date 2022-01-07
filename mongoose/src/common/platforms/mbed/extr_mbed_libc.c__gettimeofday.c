
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; int tv_sec; } ;


 int time (int *) ;

int _gettimeofday(struct timeval *tv, void *tzvp) {
  tv->tv_sec = time(((void*)0));
  tv->tv_usec = 0;
  return 0;
}
