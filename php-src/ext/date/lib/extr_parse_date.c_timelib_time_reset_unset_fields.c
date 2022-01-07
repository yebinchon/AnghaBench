
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ y; scalar_t__ m; scalar_t__ d; scalar_t__ h; scalar_t__ i; scalar_t__ s; scalar_t__ us; } ;
typedef TYPE_1__ timelib_time ;


 scalar_t__ TIMELIB_UNSET ;
 int assert (int ) ;

__attribute__((used)) static void timelib_time_reset_unset_fields(timelib_time *time)
{
 assert(time != ((void*)0));

 if (time->y == TIMELIB_UNSET ) time->y = 1970;
 if (time->m == TIMELIB_UNSET ) time->m = 1;
 if (time->d == TIMELIB_UNSET ) time->d = 1;
 if (time->h == TIMELIB_UNSET ) time->h = 0;
 if (time->i == TIMELIB_UNSET ) time->i = 0;
 if (time->s == TIMELIB_UNSET ) time->s = 0;
 if (time->us == TIMELIB_UNSET ) time->us = 0;
}
