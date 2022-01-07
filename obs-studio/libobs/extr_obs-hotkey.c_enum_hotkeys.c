
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int obs_hotkey_t ;
typedef int (* obs_hotkey_internal_enum_func ) (void*,size_t,int *) ;
struct TYPE_4__ {size_t num; int * array; } ;
struct TYPE_5__ {TYPE_1__ hotkeys; } ;
struct TYPE_6__ {TYPE_2__ hotkeys; } ;


 TYPE_3__* obs ;

__attribute__((used)) static inline void enum_hotkeys(obs_hotkey_internal_enum_func func, void *data)
{
 const size_t num = obs->hotkeys.hotkeys.num;
 obs_hotkey_t *array = obs->hotkeys.hotkeys.array;
 for (size_t i = 0; i < num; i++) {
  if (!func(data, i, &array[i]))
   break;
 }
}
