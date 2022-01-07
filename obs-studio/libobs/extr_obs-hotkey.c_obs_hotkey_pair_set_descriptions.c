
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * id; } ;
typedef TYPE_3__ obs_hotkey_pair_t ;
typedef int obs_hotkey_pair_id ;
struct TYPE_5__ {TYPE_3__* array; } ;
struct TYPE_6__ {TYPE_1__ hotkey_pairs; } ;
struct TYPE_8__ {TYPE_2__ hotkeys; } ;


 int find_pair_id (int ,size_t*) ;
 TYPE_4__* obs ;
 int obs_hotkey_set_description (int ,char const*) ;

void obs_hotkey_pair_set_descriptions(obs_hotkey_pair_id id, const char *desc0,
          const char *desc1)
{
 size_t idx;
 obs_hotkey_pair_t pair;

 if (!find_pair_id(id, &idx))
  return;

 pair = obs->hotkeys.hotkey_pairs.array[idx];

 obs_hotkey_set_description(pair.id[0], desc0);
 obs_hotkey_set_description(pair.id[1], desc1);
}
