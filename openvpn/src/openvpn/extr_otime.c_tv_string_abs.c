
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct gc_arena {int dummy; } ;


 char const* time_string (int ,long,int,struct gc_arena*) ;

const char *
tv_string_abs(const struct timeval *tv, struct gc_arena *gc)
{
    return time_string((time_t) tv->tv_sec,
                       (long) tv->tv_usec,
                       1,
                       gc);
}
