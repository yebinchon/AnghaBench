
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int obs_key_combination_t ;
typedef int obs_hotkey_t ;
typedef int obs_hotkey_id ;
struct TYPE_4__ {int * array; } ;
struct TYPE_5__ {TYPE_1__ hotkeys; } ;
struct TYPE_6__ {TYPE_2__ hotkeys; } ;


 int create_binding (int *,int ) ;
 scalar_t__ find_id (int ,size_t*) ;
 int hotkey_signal (char*,int *) ;
 int lock () ;
 TYPE_3__* obs ;
 int remove_bindings (int ) ;
 int unlock () ;

void obs_hotkey_load_bindings(obs_hotkey_id id,
         obs_key_combination_t *combinations, size_t num)
{
 size_t idx;

 if (!lock())
  return;

 if (find_id(id, &idx)) {
  obs_hotkey_t *hotkey = &obs->hotkeys.hotkeys.array[idx];
  remove_bindings(id);
  for (size_t i = 0; i < num; i++)
   create_binding(hotkey, combinations[i]);

  hotkey_signal("hotkey_bindings_changed", hotkey);
 }
 unlock();
}
