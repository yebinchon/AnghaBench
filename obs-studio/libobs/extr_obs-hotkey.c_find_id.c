
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_hotkey_internal_find_forward {int member_1; size_t idx; int found; int member_2; int member_0; } ;
typedef int obs_hotkey_id ;


 int enum_hotkeys (int ,struct obs_hotkey_internal_find_forward*) ;
 int find_id_helper ;

__attribute__((used)) static inline bool find_id(obs_hotkey_id id, size_t *idx)
{
 struct obs_hotkey_internal_find_forward find = {id, 0, 0};
 enum_hotkeys(find_id_helper, &find);
 *idx = find.idx;
 return find.found;
}
