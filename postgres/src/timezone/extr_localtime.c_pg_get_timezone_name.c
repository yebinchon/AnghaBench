
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* TZname; } ;
typedef TYPE_1__ pg_tz ;



const char *
pg_get_timezone_name(pg_tz *tz)
{
 if (tz)
  return tz->TZname;
 return ((void*)0);
}
