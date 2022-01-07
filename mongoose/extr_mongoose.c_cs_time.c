
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef int int64_t ;
struct TYPE_3__ {scalar_t__ dwHighDateTime; scalar_t__ dwLowDateTime; } ;
typedef int SYSTEMTIME ;
typedef TYPE_1__ FILETIME ;


 int GetLocalTime (int *) ;
 int SystemTimeToFileTime (int *,TYPE_1__*) ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;

double cs_time(void) {
  double now;

  struct timeval tv;
  if (gettimeofday(&tv, ((void*)0) ) != 0) return 0;
  now = (double) tv.tv_sec + (((double) tv.tv_usec) / 1000000.0);
  return now;
}
