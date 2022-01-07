
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct obs_query_hotkeys_helper {int member_2; int member_1; int member_0; } ;
struct TYPE_3__ {int strict_modifiers; int thread_disable_press; } ;
struct TYPE_4__ {TYPE_1__ hotkeys; } ;


 int INTERACT_ALT_KEY ;
 int INTERACT_COMMAND_KEY ;
 int INTERACT_CONTROL_KEY ;
 int INTERACT_SHIFT_KEY ;
 int OBS_KEY_ALT ;
 int OBS_KEY_CONTROL ;
 int OBS_KEY_META ;
 int OBS_KEY_SHIFT ;
 int enum_bindings (int ,struct obs_query_hotkeys_helper*) ;
 scalar_t__ is_pressed (int ) ;
 TYPE_2__* obs ;
 int query_hotkey ;

__attribute__((used)) static inline void query_hotkeys()
{
 uint32_t modifiers = 0;
 if (is_pressed(OBS_KEY_SHIFT))
  modifiers |= INTERACT_SHIFT_KEY;
 if (is_pressed(OBS_KEY_CONTROL))
  modifiers |= INTERACT_CONTROL_KEY;
 if (is_pressed(OBS_KEY_ALT))
  modifiers |= INTERACT_ALT_KEY;
 if (is_pressed(OBS_KEY_META))
  modifiers |= INTERACT_COMMAND_KEY;

 struct obs_query_hotkeys_helper param = {
  modifiers,
  obs->hotkeys.thread_disable_press,
  obs->hotkeys.strict_modifiers,
 };
 enum_bindings(query_hotkey, &param);
}
