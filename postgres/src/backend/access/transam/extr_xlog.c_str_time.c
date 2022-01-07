
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_time_t ;
typedef int buf ;


 int log_timezone ;
 int pg_localtime (int *,int ) ;
 int pg_strftime (char*,int,char*,int ) ;

__attribute__((used)) static char *
str_time(pg_time_t tnow)
{
 static char buf[128];

 pg_strftime(buf, sizeof(buf),
    "%Y-%m-%d %H:%M:%S %Z",
    pg_localtime(&tnow, log_timezone));

 return buf;
}
