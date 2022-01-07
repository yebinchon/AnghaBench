
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ key; int modifiers; int member_0; } ;
typedef TYPE_1__ obs_key_combination_t ;
typedef int obs_hotkey_t ;
typedef int obs_data_t ;


 int INTERACT_ALT_KEY ;
 int INTERACT_COMMAND_KEY ;
 int INTERACT_CONTROL_KEY ;
 int INTERACT_SHIFT_KEY ;
 scalar_t__ OBS_KEY_LAST_VALUE ;
 scalar_t__ OBS_KEY_NONE ;
 int create_binding (int *,TYPE_1__) ;
 int load_modifier (int *,int *,char*,int ) ;
 int obs_data_get_string (int *,char*) ;
 scalar_t__ obs_key_from_name (int ) ;

__attribute__((used)) static inline void load_binding(obs_hotkey_t *hotkey, obs_data_t *data)
{
 if (!hotkey || !data)
  return;

 obs_key_combination_t combo = {0};
 uint32_t *modifiers = &combo.modifiers;
 load_modifier(modifiers, data, "shift", INTERACT_SHIFT_KEY);
 load_modifier(modifiers, data, "control", INTERACT_CONTROL_KEY);
 load_modifier(modifiers, data, "alt", INTERACT_ALT_KEY);
 load_modifier(modifiers, data, "command", INTERACT_COMMAND_KEY);

 combo.key = obs_key_from_name(obs_data_get_string(data, "key"));
 if (!modifiers &&
     (combo.key == OBS_KEY_NONE || combo.key >= OBS_KEY_LAST_VALUE))
  return;

 create_binding(hotkey, combo);
}
