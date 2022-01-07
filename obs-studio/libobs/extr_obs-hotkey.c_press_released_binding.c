
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int id; int data; int (* func ) (int ,int ,TYPE_2__*,int) ;int pressed; } ;
typedef TYPE_2__ obs_hotkey_t ;
struct TYPE_9__ {int pressed; TYPE_2__* hotkey; } ;
typedef TYPE_3__ obs_hotkey_binding_t ;
struct TYPE_7__ {int router_func_data; int (* router_func ) (int ,int ,int) ;int reroute_hotkeys; } ;
struct TYPE_10__ {TYPE_1__ hotkeys; } ;


 TYPE_6__* obs ;
 int stub1 (int ,int ,TYPE_2__*,int) ;
 int stub2 (int ,int ,int) ;

__attribute__((used)) static inline void press_released_binding(obs_hotkey_binding_t *binding)
{
 binding->pressed = 1;

 obs_hotkey_t *hotkey = binding->hotkey;
 if (hotkey->pressed++)
  return;

 if (!obs->hotkeys.reroute_hotkeys)
  hotkey->func(hotkey->data, hotkey->id, hotkey, 1);
 else if (obs->hotkeys.router_func)
  obs->hotkeys.router_func(obs->hotkeys.router_func_data,
      hotkey->id, 1);
}
