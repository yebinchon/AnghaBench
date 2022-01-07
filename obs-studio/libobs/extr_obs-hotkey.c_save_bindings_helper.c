
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct save_bindings_helper_t {int array; TYPE_1__* hotkey; } ;
struct TYPE_6__ {int key; int modifiers; } ;
struct TYPE_7__ {scalar_t__ hotkey_id; TYPE_2__ key; } ;
typedef TYPE_3__ obs_hotkey_binding_t ;
typedef int obs_data_t ;
struct TYPE_5__ {scalar_t__ id; } ;


 int INTERACT_ALT_KEY ;
 int INTERACT_COMMAND_KEY ;
 int INTERACT_CONTROL_KEY ;
 int INTERACT_SHIFT_KEY ;
 int UNUSED_PARAMETER (size_t) ;
 int obs_data_array_push_back (int ,int *) ;
 int * obs_data_create () ;
 int obs_data_release (int *) ;
 int obs_data_set_string (int *,char*,int ) ;
 int obs_key_to_name (int ) ;
 int save_modifier (int ,int *,char*,int ) ;

__attribute__((used)) static inline bool save_bindings_helper(void *data, size_t idx,
     obs_hotkey_binding_t *binding)
{
 UNUSED_PARAMETER(idx);
 struct save_bindings_helper_t *h = data;

 if (h->hotkey->id != binding->hotkey_id)
  return 1;

 obs_data_t *hotkey = obs_data_create();

 uint32_t modifiers = binding->key.modifiers;
 save_modifier(modifiers, hotkey, "shift", INTERACT_SHIFT_KEY);
 save_modifier(modifiers, hotkey, "control", INTERACT_CONTROL_KEY);
 save_modifier(modifiers, hotkey, "alt", INTERACT_ALT_KEY);
 save_modifier(modifiers, hotkey, "command", INTERACT_COMMAND_KEY);

 obs_data_set_string(hotkey, "key", obs_key_to_name(binding->key.key));

 obs_data_array_push_back(h->array, hotkey);

 obs_data_release(hotkey);

 return 1;
}
