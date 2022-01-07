
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DOUBLE ;


 scalar_t__ NAN ;
 scalar_t__ fmod (scalar_t__,int) ;
 scalar_t__ isnan (scalar_t__) ;

__attribute__((used)) static inline DOUBLE ms_from_time(DOUBLE time)
{
    DOUBLE ret;

    if(isnan(time))
        return NAN;

    ret = fmod(time, 1000);
    if(ret<0) ret += 1000;

    return ret;
}
