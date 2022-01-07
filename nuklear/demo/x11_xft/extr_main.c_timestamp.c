
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 scalar_t__ gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static long
timestamp(void)
{
    struct timeval tv;
    if (gettimeofday(&tv, ((void*)0)) < 0) return 0;
    return (long)((long)tv.tv_sec * 1000 + (long)tv.tv_usec/1000);
}
