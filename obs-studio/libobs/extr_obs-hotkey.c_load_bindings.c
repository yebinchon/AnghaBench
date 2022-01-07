
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_hotkey_t ;
typedef int obs_data_t ;
typedef int obs_data_array_t ;


 int hotkey_signal (char*,int *) ;
 int load_binding (int *,int *) ;
 size_t obs_data_array_count (int *) ;
 int * obs_data_array_item (int *,size_t) ;
 int obs_data_release (int *) ;

__attribute__((used)) static inline void load_bindings(obs_hotkey_t *hotkey, obs_data_array_t *data)
{
 const size_t count = obs_data_array_count(data);
 for (size_t i = 0; i < count; i++) {
  obs_data_t *item = obs_data_array_item(data, i);
  load_binding(hotkey, item);
  obs_data_release(item);
 }

 hotkey_signal("hotkey_bindings_changed", hotkey);
}
