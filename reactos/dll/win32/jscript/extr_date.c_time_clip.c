
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double DOUBLE ;


 double NAN ;
 double floor (double) ;

__attribute__((used)) static inline DOUBLE time_clip(DOUBLE time)
{
    if(8.64e15 < time || time < -8.64e15) {
        return NAN;
    }

    return floor(time);
}
