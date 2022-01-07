
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int description; } ;
typedef TYPE_3__ obs_hotkey_t ;
typedef int obs_hotkey_id ;
struct TYPE_5__ {TYPE_3__* array; } ;
struct TYPE_6__ {TYPE_1__ hotkeys; } ;
struct TYPE_8__ {TYPE_2__ hotkeys; } ;


 int bfree (int ) ;
 int bstrdup (char const*) ;
 int find_id (int ,size_t*) ;
 TYPE_4__* obs ;

void obs_hotkey_set_description(obs_hotkey_id id, const char *desc)
{
 size_t idx;

 if (!find_id(id, &idx))
  return;

 obs_hotkey_t *hotkey = &obs->hotkeys.hotkeys.array[idx];
 bfree(hotkey->description);
 hotkey->description = bstrdup(desc);
}
