
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binding_find_data {size_t* member_1; int member_2; int found; int member_0; } ;
typedef int obs_hotkey_id ;


 int binding_finder ;
 int enum_bindings (int ,struct binding_find_data*) ;

__attribute__((used)) static inline bool find_binding(obs_hotkey_id id, size_t *idx)
{
 struct binding_find_data data = {id, idx, 0};
 enum_bindings(binding_finder, &data);
 return data.found;
}
