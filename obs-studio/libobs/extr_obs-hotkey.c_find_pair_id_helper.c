
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct obs_hotkey_internal_find_pair_forward {scalar_t__ id; size_t idx; int found; } ;
struct TYPE_3__ {scalar_t__ pair_id; } ;
typedef TYPE_1__ obs_hotkey_pair_t ;



__attribute__((used)) static inline bool find_pair_id_helper(size_t idx, obs_hotkey_pair_t *pair,
           void *data)
{
 struct obs_hotkey_internal_find_pair_forward *find = data;
 if (pair->pair_id != find->id)
  return 1;

 find->idx = idx;
 find->found = 1;
 return 0;
}
