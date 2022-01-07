
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int * id; } ;
typedef TYPE_4__ obs_hotkey_pair_t ;
typedef int obs_hotkey_pair_id ;
typedef int obs_data_array_t ;
struct TYPE_7__ {int * array; } ;
struct TYPE_6__ {TYPE_4__* array; } ;
struct TYPE_8__ {TYPE_2__ hotkeys; TYPE_1__ hotkey_pairs; } ;
struct TYPE_10__ {TYPE_3__ hotkeys; } ;


 scalar_t__ find_id (int ,size_t*) ;
 int find_pair_id (int ,size_t*) ;
 int load_bindings (int *,int *) ;
 int lock () ;
 TYPE_5__* obs ;
 int remove_bindings (int ) ;
 int unlock () ;

void obs_hotkey_pair_load(obs_hotkey_pair_id id, obs_data_array_t *data0,
     obs_data_array_t *data1)
{
 if ((!data0 && !data1) || !lock())
  return;

 size_t idx;
 if (!find_pair_id(id, &idx))
  goto unlock;

 obs_hotkey_pair_t *pair = &obs->hotkeys.hotkey_pairs.array[idx];

 if (find_id(pair->id[0], &idx)) {
  remove_bindings(pair->id[0]);
  load_bindings(&obs->hotkeys.hotkeys.array[idx], data0);
 }
 if (find_id(pair->id[1], &idx)) {
  remove_bindings(pair->id[1]);
  load_bindings(&obs->hotkeys.hotkeys.array[idx], data1);
 }

unlock:
 unlock();
}
