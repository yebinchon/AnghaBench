
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* mp_format_time_fmt (char*,double) ;

char *mp_format_time(double time, bool fractions)
{
    return mp_format_time_fmt(fractions ? "%H:%M:%S.%T" : "%H:%M:%S", time);
}
