
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int modifiers; } ;
struct TYPE_5__ {TYPE_1__ key; } ;
typedef TYPE_2__ obs_hotkey_binding_t ;



__attribute__((used)) static inline bool modifiers_match(obs_hotkey_binding_t *binding,
       uint32_t modifiers_, bool strict_modifiers)
{
 uint32_t modifiers = binding->key.modifiers;
 return !modifiers ||
        (!strict_modifiers && (modifiers & modifiers_) == modifiers) ||
        (strict_modifiers && modifiers == modifiers_);
}
