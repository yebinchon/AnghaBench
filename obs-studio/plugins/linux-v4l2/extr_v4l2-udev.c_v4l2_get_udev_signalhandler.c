
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signal_handler_t ;


 int * udev_signalhandler ;

signal_handler_t *v4l2_get_udev_signalhandler(void)
{
 return udev_signalhandler;
}
