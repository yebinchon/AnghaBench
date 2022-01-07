
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int zlog_fd ;

int zlog_set_fd(int new_fd)
{
 int old_fd = zlog_fd;

 zlog_fd = new_fd;
 return old_fd;
}
