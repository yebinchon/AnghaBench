
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DOUBLE ;


 int NAN ;
 int floor (int) ;
 int fmod (int ,int) ;
 scalar_t__ isnan (int) ;

__attribute__((used)) static inline DOUBLE sec_from_time(DOUBLE time)
{
    DOUBLE ret;

    if(isnan(time))
        return NAN;

    ret = fmod(floor(time/1000), 60);
    if(ret<0) ret += 60;

    return ret;
}
