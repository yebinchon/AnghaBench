
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct timespec {unsigned long long tv_sec; scalar_t__ tv_nsec; } ;


 int cfg_clockid ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int errno ;
 int error (int,int ,char*) ;

__attribute__((used)) static uint64_t gettime_ns(void)
{
 struct timespec ts;

 if (clock_gettime(cfg_clockid, &ts))
  error(1, errno, "gettime");

 return ts.tv_sec * (1000ULL * 1000 * 1000) + ts.tv_nsec;
}
