
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;


 int TIMER_ABSTIME ;
 int UNSUPPORTED ;
 scalar_t__ clock_gettime (int,struct timespec*) ;
 scalar_t__ clock_nanosleep (int,int ,struct timespec*,int *) ;
 int in_order (struct timespec,struct timespec) ;
 struct timespec timespec_add (struct timespec,long long) ;

int nanosleep_test(int clockid, long long ns)
{
 struct timespec now, target, rel;


 if (clock_gettime(clockid, &now))
  return UNSUPPORTED;
 target = timespec_add(now, ns);

 if (clock_nanosleep(clockid, TIMER_ABSTIME, &target, ((void*)0)))
  return UNSUPPORTED;
 clock_gettime(clockid, &now);

 if (!in_order(target, now))
  return -1;


 clock_gettime(clockid, &now);
 rel.tv_sec = 0;
 rel.tv_nsec = 0;
 rel = timespec_add(rel, ns);
 target = timespec_add(now, ns);
 clock_nanosleep(clockid, 0, &rel, ((void*)0));
 clock_gettime(clockid, &now);

 if (!in_order(target, now))
  return -1;
 return 0;
}
