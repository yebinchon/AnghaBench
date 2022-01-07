
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_localtime; scalar_t__ dst; void* zone_type; } ;
typedef TYPE_1__ timelib_time ;
typedef int timelib_long ;


 int TIMELIB_UNSET ;
 void* TIMELIB_ZONETYPE_OFFSET ;
 scalar_t__ isdigit (char) ;
 int sMIN (int ) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static timelib_long timelib_parse_tz_minutes(char **ptr, timelib_time *t)
{
 timelib_long retval = TIMELIB_UNSET;
 char *begin = *ptr;


 if (**ptr != '+' && **ptr != '-') {
  return retval;
 }

 ++*ptr;
 while (isdigit(**ptr)) {
  ++*ptr;
 }

 if (*begin == '+') {
  t->is_localtime = 1;
  t->zone_type = TIMELIB_ZONETYPE_OFFSET;
  t->dst = 0;

  retval = sMIN(strtol(begin + 1, ((void*)0), 10));
 } else if (*begin == '-') {
  t->is_localtime = 1;
  t->zone_type = TIMELIB_ZONETYPE_OFFSET;
  t->dst = 0;

  retval = -1 * sMIN(strtol(begin + 1, ((void*)0), 10));
 }
 return retval;
}
