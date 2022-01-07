
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int * id; } ;
typedef TYPE_4__ obs_hotkey_pair_t ;
struct TYPE_8__ {TYPE_1__* array; } ;
struct TYPE_9__ {TYPE_2__ hotkeys; } ;
struct TYPE_11__ {TYPE_3__ hotkeys; } ;
struct TYPE_7__ {TYPE_4__* data; } ;


 int UNUSED_PARAMETER (void*) ;
 scalar_t__ find_id (int ,size_t*) ;
 TYPE_6__* obs ;

__attribute__((used)) static inline bool pair_pointer_fixup_func(size_t idx, obs_hotkey_pair_t *pair,
        void *data)
{
 UNUSED_PARAMETER(idx);
 UNUSED_PARAMETER(data);

 if (find_id(pair->id[0], &idx))
  obs->hotkeys.hotkeys.array[idx].data = pair;

 if (find_id(pair->id[1], &idx))
  obs->hotkeys.hotkeys.array[idx].data = pair;

 return 1;
}
