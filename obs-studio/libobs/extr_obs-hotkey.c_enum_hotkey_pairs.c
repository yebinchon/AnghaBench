
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int obs_hotkey_pair_t ;
typedef int (* obs_hotkey_pair_internal_enum_func ) (size_t,int *,void*) ;
struct TYPE_4__ {size_t num; int * array; } ;
struct TYPE_5__ {TYPE_1__ hotkey_pairs; } ;
struct TYPE_6__ {TYPE_2__ hotkeys; } ;


 TYPE_3__* obs ;

__attribute__((used)) static inline void enum_hotkey_pairs(obs_hotkey_pair_internal_enum_func func,
         void *data)
{
 const size_t num = obs->hotkeys.hotkey_pairs.num;
 obs_hotkey_pair_t *array = obs->hotkeys.hotkey_pairs.array;
 for (size_t i = 0; i < num; i++) {
  if (!func(i, &array[i], data))
   break;
 }
}
