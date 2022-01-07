
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int obs_hotkey_callback_router_func ;
struct TYPE_3__ {void* router_func_data; int router_func; } ;
struct TYPE_4__ {TYPE_1__ hotkeys; } ;


 int lock () ;
 TYPE_2__* obs ;
 int unlock () ;

void obs_hotkey_set_callback_routing_func(obs_hotkey_callback_router_func func,
       void *data)
{
 if (!lock())
  return;

 obs->hotkeys.router_func = func;
 obs->hotkeys.router_func_data = data;
 unlock();
}
