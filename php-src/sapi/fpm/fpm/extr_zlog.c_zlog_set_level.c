
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZLOG_ALERT ;
 int ZLOG_DEBUG ;
 int zlog_level ;

int zlog_set_level(int new_value)
{
 int old_value = zlog_level;

 if (new_value < ZLOG_DEBUG || new_value > ZLOG_ALERT) return old_value;

 zlog_level = new_value;
 return old_value;
}
