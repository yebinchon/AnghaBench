
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;


 int max_int (int,int) ;

__attribute__((used)) static inline int
tv_to_ms_timeout(const struct timeval *tv)
{
    if (tv->tv_sec == 0 && tv->tv_usec == 0)
    {
        return 0;
    }
    else
    {
        return max_int(tv->tv_sec * 1000 + (tv->tv_usec + 500) / 1000, 1);
    }
}
