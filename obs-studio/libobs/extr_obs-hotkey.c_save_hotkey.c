
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct save_bindings_helper_t {int * member_1; int * member_0; } ;
typedef int obs_hotkey_t ;
typedef int obs_data_array_t ;


 int enum_bindings (int ,struct save_bindings_helper_t*) ;
 int * obs_data_array_create () ;
 int save_bindings_helper ;

__attribute__((used)) static inline obs_data_array_t *save_hotkey(obs_hotkey_t *hotkey)
{
 obs_data_array_t *data = obs_data_array_create();

 struct save_bindings_helper_t arg = {data, hotkey};
 enum_bindings(save_bindings_helper, &arg);

 return data;
}
