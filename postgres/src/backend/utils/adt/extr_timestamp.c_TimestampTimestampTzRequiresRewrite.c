
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pg_get_timezone_offset (int ,long*) ;
 int session_timezone ;

bool
TimestampTimestampTzRequiresRewrite(void)
{
 long offset;

 if (pg_get_timezone_offset(session_timezone, &offset) && offset == 0)
  return 0;
 return 1;
}
