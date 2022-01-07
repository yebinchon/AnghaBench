
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int control_fd ;

void control_cleanup(void)
{
 close(control_fd);
 control_fd = -1;
}
