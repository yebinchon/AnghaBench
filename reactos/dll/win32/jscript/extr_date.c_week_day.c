
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DOUBLE ;


 scalar_t__ NAN ;
 scalar_t__ day (scalar_t__) ;
 scalar_t__ fmod (scalar_t__,int) ;
 scalar_t__ isnan (scalar_t__) ;

__attribute__((used)) static inline DOUBLE week_day(DOUBLE time)
{
    DOUBLE ret;

    if(isnan(time))
        return NAN;

    ret = fmod(day(time)+4, 7);
    if(ret<0) ret += 7;

    return ret;
}
