
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {long long tv_sec; long long tv_nsec; } ;


 long long NSEC_PER_SEC ;

long long timespec_sub(struct timespec a, struct timespec b)
{
 long long ret = NSEC_PER_SEC * b.tv_sec + b.tv_nsec;

 ret -= NSEC_PER_SEC * a.tv_sec + a.tv_nsec;
 return ret;
}
