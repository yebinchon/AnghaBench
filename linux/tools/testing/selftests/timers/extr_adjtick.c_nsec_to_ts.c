
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {long long tv_sec; long long tv_nsec; } ;


 long long NSEC_PER_SEC ;

struct timespec nsec_to_ts(long long ns)
{
 struct timespec ts;

 ts.tv_sec = ns/NSEC_PER_SEC;
 ts.tv_nsec = ns%NSEC_PER_SEC;

 return ts;
}
