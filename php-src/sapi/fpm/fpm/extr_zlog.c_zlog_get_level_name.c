
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZLOG_ALERT ;
 int ZLOG_DEBUG ;
 char const** level_names ;
 int zlog_level ;

const char *zlog_get_level_name(int log_level)
{
 if (log_level < 0) {
  log_level = zlog_level;
 } else if (log_level < ZLOG_DEBUG || log_level > ZLOG_ALERT) {
  return "unknown value";
 }

 return level_names[log_level];
}
