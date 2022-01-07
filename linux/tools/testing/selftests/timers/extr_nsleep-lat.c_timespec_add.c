
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;


 scalar_t__ NSEC_PER_SEC ;

struct timespec timespec_add(struct timespec ts, unsigned long long ns)
{
 ts.tv_nsec += ns;
 while (ts.tv_nsec >= NSEC_PER_SEC) {
  ts.tv_nsec -= NSEC_PER_SEC;
  ts.tv_sec++;
 }
 return ts;
}
