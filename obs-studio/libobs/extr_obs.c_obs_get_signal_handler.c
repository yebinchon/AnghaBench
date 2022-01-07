
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int signal_handler_t ;
struct TYPE_2__ {int * signals; } ;


 TYPE_1__* obs ;

signal_handler_t *obs_get_signal_handler(void)
{
 if (!obs)
  return ((void*)0);
 return obs->signals;
}
