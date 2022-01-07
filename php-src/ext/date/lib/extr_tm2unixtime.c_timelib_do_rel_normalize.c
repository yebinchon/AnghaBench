
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int m; int y; } ;
typedef TYPE_1__ timelib_time ;
struct TYPE_6__ {int y; int m; int invert; int d; int h; int i; int s; int us; } ;
typedef TYPE_2__ timelib_rel_time ;


 int do_range_limit (int ,int,int,int *,int *) ;
 int do_range_limit_days_relative (int *,int *,int *,int *,int *,int ) ;

void timelib_do_rel_normalize(timelib_time *base, timelib_rel_time *rt)
{
 do_range_limit(0, 1000000, 1000000, &rt->us, &rt->s);
 do_range_limit(0, 60, 60, &rt->s, &rt->i);
 do_range_limit(0, 60, 60, &rt->i, &rt->h);
 do_range_limit(0, 24, 24, &rt->h, &rt->d);
 do_range_limit(0, 12, 12, &rt->m, &rt->y);

 do_range_limit_days_relative(&base->y, &base->m, &rt->y, &rt->m, &rt->d, rt->invert);
 do_range_limit(0, 12, 12, &rt->m, &rt->y);
}
