
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
 int lock () ;
 TYPE_3__* obs ;
 int * save_hotkey (int *) ;
 int unlock () ;

obs_data_array_t *obs_hotkey_save(obs_hotkey_id id)
{
 size_t idx;
 obs_data_array_t *result = ((void*)0);

 if (!lock())
  return result;

 if (find_id(id, &idx))
  result = save_hotkey(&obs->hotkeys.hotkeys.array[idx]);
 unlock();

 return result;
}
