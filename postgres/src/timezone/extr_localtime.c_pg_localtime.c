
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pg_tm {int dummy; } ;
struct TYPE_3__ {int state; } ;
typedef TYPE_1__ pg_tz ;
typedef int pg_time_t ;


 struct pg_tm* localsub (int *,int const*,int *) ;
 int tm ;

struct pg_tm *
pg_localtime(const pg_time_t *timep, const pg_tz *tz)
{
 return localsub(&tz->state, timep, &tm);
}
