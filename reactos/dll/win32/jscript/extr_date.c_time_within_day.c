
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DOUBLE ;


 scalar_t__ MS_PER_DAY ;
 scalar_t__ fmod (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline DOUBLE time_within_day(DOUBLE time)
{
    DOUBLE ret;

    ret = fmod(time, MS_PER_DAY);
    if(ret < 0)
        ret += MS_PER_DAY;

    return ret;
}
