
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_hotkey_internal_find_pair_forward {int member_1; size_t idx; int found; int member_2; int member_0; } ;
typedef int obs_hotkey_pair_id ;


 int enum_hotkey_pairs (int ,struct obs_hotkey_internal_find_pair_forward*) ;
 int find_pair_id_helper ;

__attribute__((used)) static inline bool find_pair_id(obs_hotkey_pair_id id, size_t *idx)
{
 struct obs_hotkey_internal_find_pair_forward find = {id, 0, 0};
 enum_hotkey_pairs(find_pair_id_helper, &find);
 *idx = find.idx;
 return find.found;
}
