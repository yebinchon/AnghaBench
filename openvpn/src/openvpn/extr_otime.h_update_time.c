
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; } ;


 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ now ;
 scalar_t__ time (int *) ;

__attribute__((used)) static inline void
update_time(void)
{
    const time_t real_time = time(((void*)0));
    if (real_time != now)
    {
        now = real_time;
    }

}
