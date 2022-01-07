
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct state {int typecnt; TYPE_1__* ttis; } ;
struct TYPE_5__ {struct state state; } ;
typedef TYPE_2__ pg_tz ;
struct TYPE_4__ {long tt_utoff; } ;



bool
pg_get_timezone_offset(const pg_tz *tz, long int *gmtoff)
{





 const struct state *sp;
 int i;

 sp = &tz->state;
 for (i = 1; i < sp->typecnt; i++)
 {
  if (sp->ttis[i].tt_utoff != sp->ttis[0].tt_utoff)
   return 0;
 }
 *gmtoff = sp->ttis[0].tt_utoff;
 return 1;
}
