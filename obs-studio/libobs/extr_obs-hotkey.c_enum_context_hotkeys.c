
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t num; int * array; } ;
struct obs_context_data {TYPE_1__ hotkeys; } ;
typedef int obs_hotkey_t ;
typedef int (* obs_hotkey_internal_enum_func ) (void*,size_t,int *) ;
typedef int obs_hotkey_id ;
struct TYPE_6__ {int * array; } ;
struct TYPE_7__ {TYPE_2__ hotkeys; } ;
struct TYPE_8__ {TYPE_3__ hotkeys; } ;


 int find_id (int const,size_t*) ;
 TYPE_4__* obs ;

__attribute__((used)) static inline void enum_context_hotkeys(struct obs_context_data *context,
     obs_hotkey_internal_enum_func func,
     void *data)
{
 const size_t num = context->hotkeys.num;
 const obs_hotkey_id *array = context->hotkeys.array;
 obs_hotkey_t *hotkey_array = obs->hotkeys.hotkeys.array;
 for (size_t i = 0; i < num; i++) {
  size_t idx;
  if (!find_id(array[i], &idx))
   continue;

  if (!func(data, idx, &hotkey_array[idx]))
   break;
 }
}
