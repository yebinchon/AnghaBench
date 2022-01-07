
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ key; int modifiers; } ;
struct obs_hotkey_internal_inject {int strict_modifiers; TYPE_2__ hotkey; int pressed; } ;
struct TYPE_7__ {scalar_t__ key; } ;
struct TYPE_9__ {TYPE_1__ key; } ;
typedef TYPE_3__ obs_hotkey_binding_t ;


 int UNUSED_PARAMETER (size_t) ;
 int handle_binding (TYPE_3__*,int ,int,int ,int*) ;
 scalar_t__ modifiers_match (TYPE_3__*,int ,int ) ;

__attribute__((used)) static inline bool inject_hotkey(void *data, size_t idx,
     obs_hotkey_binding_t *binding)
{
 UNUSED_PARAMETER(idx);
 struct obs_hotkey_internal_inject *event = data;

 if (modifiers_match(binding, event->hotkey.modifiers,
       event->strict_modifiers)) {
  bool pressed = binding->key.key == event->hotkey.key &&
          event->pressed;
  handle_binding(binding, event->hotkey.modifiers, 0,
          event->strict_modifiers, &pressed);
 }

 return 1;
}
