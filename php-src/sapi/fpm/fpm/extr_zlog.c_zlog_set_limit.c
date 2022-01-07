
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int zlog_limit ;

int zlog_set_limit(int new_value)
{
 int old_value = zlog_limit;

 zlog_limit = new_value;
 return old_value;
}
