
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;


 scalar_t__ ZLOG_DEBUG ;
 int localtime_r (int const*,struct tm*) ;
 scalar_t__ snprintf (char*,size_t,char*,...) ;
 size_t strftime (char*,size_t,char*,int ) ;
 scalar_t__ zlog_level ;

size_t zlog_print_time(struct timeval *tv, char *timebuf, size_t timebuf_len)
{
 struct tm t;
 size_t len;

 len = strftime(timebuf, timebuf_len, "[%d-%b-%Y %H:%M:%S",
   localtime_r((const time_t *) &tv->tv_sec, &t));
 if (zlog_level == ZLOG_DEBUG) {
  len += snprintf(timebuf + len, timebuf_len - len, ".%06d", (int) tv->tv_usec);
 }
 len += snprintf(timebuf + len, timebuf_len - len, "] ");
 return len;
}
