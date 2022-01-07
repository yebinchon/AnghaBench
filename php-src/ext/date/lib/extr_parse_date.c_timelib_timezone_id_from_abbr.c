
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* full_tz_name; } ;
typedef TYPE_1__ timelib_tz_lookup_table ;
typedef int timelib_long ;


 TYPE_1__* abbr_search (char const*,int ,int) ;

char *timelib_timezone_id_from_abbr(const char *abbr, timelib_long gmtoffset, int isdst)
{
 const timelib_tz_lookup_table *tp;

 tp = abbr_search(abbr, gmtoffset, isdst);
 if (tp) {
  return (tp->full_tz_name);
 } else {
  return ((void*)0);
 }
}
