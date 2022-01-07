
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ key; int modifiers; } ;
typedef TYPE_1__ obs_key_combination_t ;


 scalar_t__ OBS_KEY_NONE ;

__attribute__((used)) static inline bool obs_key_combination_is_empty(obs_key_combination_t combo)
{
 return !combo.modifiers && combo.key == OBS_KEY_NONE;
}
