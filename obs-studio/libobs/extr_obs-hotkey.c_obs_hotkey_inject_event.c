
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int member_1; int member_0; } ;
struct obs_hotkey_internal_inject {int member_1; int member_2; TYPE_1__ member_0; } ;
struct TYPE_8__ {int key; int modifiers; } ;
typedef TYPE_3__ obs_key_combination_t ;
struct TYPE_7__ {int strict_modifiers; } ;
struct TYPE_9__ {TYPE_2__ hotkeys; } ;


 int enum_bindings (int ,struct obs_hotkey_internal_inject*) ;
 int inject_hotkey ;
 int lock () ;
 TYPE_5__* obs ;
 int unlock () ;

void obs_hotkey_inject_event(obs_key_combination_t hotkey, bool pressed)
{
 if (!lock())
  return;

 struct obs_hotkey_internal_inject event = {
  {hotkey.modifiers, hotkey.key},
  pressed,
  obs->hotkeys.strict_modifiers,
 };
 enum_bindings(inject_hotkey, &event);
 unlock();
}
