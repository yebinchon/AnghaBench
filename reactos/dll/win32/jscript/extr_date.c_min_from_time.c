
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DOUBLE ;


 scalar_t__ MS_PER_MINUTE ;
 scalar_t__ NAN ;
 int floor (scalar_t__) ;
 scalar_t__ fmod (int ,int) ;
 scalar_t__ isnan (scalar_t__) ;

__attribute__((used)) static inline DOUBLE min_from_time(DOUBLE time)
{
    DOUBLE ret;

    if(isnan(time))
        return NAN;

    ret = fmod(floor(time/MS_PER_MINUTE), 60);
    if(ret<0) ret += 60;

    return ret;
}
