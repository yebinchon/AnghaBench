
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int obs_key_combination_t ;
struct TYPE_8__ {int id; } ;
typedef TYPE_2__ obs_hotkey_t ;
struct TYPE_9__ {TYPE_2__* hotkey; int hotkey_id; int key; } ;
typedef TYPE_3__ obs_hotkey_binding_t ;
struct TYPE_7__ {int bindings; } ;
struct TYPE_10__ {TYPE_1__ hotkeys; } ;


 TYPE_3__* da_push_back_new (int ) ;
 TYPE_4__* obs ;

__attribute__((used)) static inline void create_binding(obs_hotkey_t *hotkey,
      obs_key_combination_t combo)
{
 obs_hotkey_binding_t *binding = da_push_back_new(obs->hotkeys.bindings);
 if (!binding)
  return;

 binding->key = combo;
 binding->hotkey_id = hotkey->id;
 binding->hotkey = hotkey;
}
