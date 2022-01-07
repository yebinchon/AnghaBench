
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int obs_hotkey_id ;
typedef int obs_data_array_t ;
struct TYPE_4__ {int * array; } ;
struct TYPE_5__ {TYPE_1__ hotkeys; } ;
struct TYPE_6__ {TYPE_2__ hotkeys; } ;


 scalar_t__ find_id (int ,size_t*) ;
 int load_bindings (int *,int *) ;
 int lock () ;
 TYPE_3__* obs ;
 int remove_bindings (int ) ;
 int unlock () ;

void obs_hotkey_load(obs_hotkey_id id, obs_data_array_t *data)
{
 size_t idx;

 if (!lock())
  return;

 if (find_id(id, &idx)) {
  remove_bindings(id);
  load_bindings(&obs->hotkeys.hotkeys.array[idx], data);
 }
 unlock();
}
