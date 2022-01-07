
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * description; int * name; } ;
typedef TYPE_2__ obs_hotkey_t ;
struct TYPE_9__ {size_t num; TYPE_2__* array; } ;
struct TYPE_6__ {int ** translations; TYPE_5__ hotkey_pairs; TYPE_5__ hotkeys; TYPE_5__ bindings; } ;
struct TYPE_8__ {TYPE_1__ hotkeys; } ;


 size_t OBS_KEY_LAST_VALUE ;
 int bfree (int *) ;
 int da_free (TYPE_5__) ;
 TYPE_4__* obs ;
 int release_registerer (TYPE_2__*) ;

void obs_hotkeys_free(void)
{
 const size_t num = obs->hotkeys.hotkeys.num;
 obs_hotkey_t *hotkeys = obs->hotkeys.hotkeys.array;
 for (size_t i = 0; i < num; i++) {
  bfree(hotkeys[i].name);
  bfree(hotkeys[i].description);

  release_registerer(&hotkeys[i]);
 }
 da_free(obs->hotkeys.bindings);
 da_free(obs->hotkeys.hotkeys);
 da_free(obs->hotkeys.hotkey_pairs);

 for (size_t i = 0; i < OBS_KEY_LAST_VALUE; i++) {
  if (obs->hotkeys.translations[i]) {
   bfree(obs->hotkeys.translations[i]);
   obs->hotkeys.translations[i] = ((void*)0);
  }
 }
}
