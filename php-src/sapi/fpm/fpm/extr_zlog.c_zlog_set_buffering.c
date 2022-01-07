
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zlog_bool ;


 int zlog_buffering ;

int zlog_set_buffering(zlog_bool buffering)
{
 int old_value = zlog_buffering;

 zlog_buffering = buffering;
 return old_value;
}
