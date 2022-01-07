
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;
struct timeval {int tv_sec; } ;


 int gettimeofday (struct timeval*,int *) ;
 int php_asctime_r (struct tm*,char*) ;
 int php_localtime_r (int *,struct tm*) ;

int php_cli_server_get_system_time(char *buf) {
 struct timeval tv;
 struct tm tm;

 gettimeofday(&tv, ((void*)0));


 php_localtime_r(&tv.tv_sec, &tm);
 php_asctime_r(&tm, buf);
 return 0;
}
