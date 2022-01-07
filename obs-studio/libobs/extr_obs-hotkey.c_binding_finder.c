
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct binding_find_data {scalar_t__ id; size_t* idx; int found; } ;
struct TYPE_3__ {scalar_t__ hotkey_id; } ;
typedef TYPE_1__ obs_hotkey_binding_t ;



__attribute__((used)) static inline bool binding_finder(void *data, size_t idx,
      obs_hotkey_binding_t *binding)
{
 struct binding_find_data *find = data;
 if (binding->hotkey_id != find->id)
  return 1;

 *find->idx = idx;
 find->found = 1;
 return 0;
}
