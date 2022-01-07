
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_timezone ;
 char* pg_get_timezone_name (int ) ;

const char *
show_log_timezone(void)
{
 const char *tzn;


 tzn = pg_get_timezone_name(log_timezone);

 if (tzn != ((void*)0))
  return tzn;

 return "unknown";
}
