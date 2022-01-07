
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int data; int (* func ) (int ,int ,TYPE_3__*,int) ;} ;
typedef TYPE_3__ obs_hotkey_t ;
typedef int obs_hotkey_id ;
struct TYPE_6__ {TYPE_3__* array; } ;
struct TYPE_7__ {TYPE_1__ hotkeys; int reroute_hotkeys; } ;
struct TYPE_9__ {TYPE_2__ hotkeys; } ;


 int find_id (int ,size_t*) ;
 int lock () ;
 TYPE_5__* obs ;
 int stub1 (int ,int ,TYPE_3__*,int) ;
 int unlock () ;

void obs_hotkey_trigger_routed_callback(obs_hotkey_id id, bool pressed)
{
 if (!lock())
  return;

 if (!obs->hotkeys.reroute_hotkeys)
  goto unlock;

 size_t idx;
 if (!find_id(id, &idx))
  goto unlock;

 obs_hotkey_t *hotkey = &obs->hotkeys.hotkeys.array[idx];
 hotkey->func(hotkey->data, id, hotkey, pressed);

unlock:
 unlock();
}
