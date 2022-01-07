
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_2__ {int is_child; } ;


 scalar_t__ ZLOG_DEBUG ;
 int ZLOG_LEVEL_MASK ;
 TYPE_1__ fpm_globals ;
 int getpid () ;
 int gettimeofday (struct timeval*,int ) ;
 char** level_names ;
 scalar_t__ snprintf (char*,size_t,char*,char*,...) ;
 scalar_t__ zlog_level ;
 size_t zlog_print_time (struct timeval*,char*,size_t) ;

__attribute__((used)) static size_t zlog_buf_prefix(
  const char *function, int line, int flags,
  char *buf, size_t buf_size, int use_syslog)
{
 struct timeval tv;
 size_t len = 0;
 {
  if (!fpm_globals.is_child) {
   gettimeofday(&tv, 0);
   len = zlog_print_time(&tv, buf, buf_size);
  }
  if (zlog_level == ZLOG_DEBUG) {
   if (!fpm_globals.is_child) {
    len += snprintf(buf + len, buf_size - len, "%s: pid %d, %s(), line %d: ",
      level_names[flags & ZLOG_LEVEL_MASK], getpid(), function, line);
   } else {
    len += snprintf(buf + len, buf_size - len, "%s: %s(), line %d: ",
      level_names[flags & ZLOG_LEVEL_MASK], function, line);
   }
  } else {
   len += snprintf(buf + len, buf_size - len, "%s: ",
     level_names[flags & ZLOG_LEVEL_MASK]);
  }
 }

 return len;
}
