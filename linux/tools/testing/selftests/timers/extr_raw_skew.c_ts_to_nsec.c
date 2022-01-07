
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; unsigned long long tv_nsec; } ;


 int NSEC_PER_SEC ;

unsigned long long ts_to_nsec(struct timespec ts)
{
 return ts.tv_sec * NSEC_PER_SEC + ts.tv_nsec;
}
