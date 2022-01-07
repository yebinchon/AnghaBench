
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ registerer_type; int registerer; int description; int name; } ;
typedef TYPE_2__ obs_hotkey_t ;
typedef scalar_t__ obs_hotkey_id ;
struct TYPE_10__ {size_t num; TYPE_2__* array; } ;
struct TYPE_7__ {scalar_t__ next_id; TYPE_6__ hotkeys; } ;
struct TYPE_9__ {TYPE_1__ hotkeys; } ;


 scalar_t__ OBS_HOTKEY_REGISTERER_SOURCE ;
 int bfree (int ) ;
 int da_erase (TYPE_6__,size_t) ;
 int find_id (scalar_t__,size_t*) ;
 int hotkey_signal (char*,TYPE_2__*) ;
 TYPE_4__* obs ;
 int obs_weak_source_release (int ) ;
 int release_registerer (TYPE_2__*) ;
 int remove_bindings (scalar_t__) ;

__attribute__((used)) static inline bool unregister_hotkey(obs_hotkey_id id)
{
 if (id >= obs->hotkeys.next_id)
  return 0;

 size_t idx;
 if (!find_id(id, &idx))
  return 0;

 obs_hotkey_t *hotkey = &obs->hotkeys.hotkeys.array[idx];

 hotkey_signal("hotkey_unregister", hotkey);

 release_registerer(hotkey);

 bfree(hotkey->name);
 bfree(hotkey->description);

 if (hotkey->registerer_type == OBS_HOTKEY_REGISTERER_SOURCE)
  obs_weak_source_release(hotkey->registerer);

 da_erase(obs->hotkeys.hotkeys, idx);
 remove_bindings(id);

 return obs->hotkeys.hotkeys.num >= idx;
}
