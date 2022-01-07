
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_timezone ;
 int pg_tzset (char*) ;
 int session_timezone ;

void
pg_timezone_initialize(void)
{







 session_timezone = pg_tzset("GMT");
 log_timezone = session_timezone;
}
