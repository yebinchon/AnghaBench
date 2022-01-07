
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int m; int d; int * tz_info; scalar_t__ us; scalar_t__ s; scalar_t__ i; scalar_t__ h; } ;
typedef TYPE_1__ timelib_time ;


 int assert (int ) ;

__attribute__((used)) static void timelib_time_reset_fields(timelib_time *time)
{
 assert(time != ((void*)0));

 time->y = 1970;
 time->m = 1;
 time->d = 1;
 time->h = time->i = time->s = 0;
 time->us = 0;
 time->tz_info = ((void*)0);
}
