
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* pg_get_timezone_name (int ) ;
 int session_timezone ;

const char *
show_timezone(void)
{
 const char *tzn;


 tzn = pg_get_timezone_name(session_timezone);

 if (tzn != ((void*)0))
  return tzn;

 return "unknown";
}
