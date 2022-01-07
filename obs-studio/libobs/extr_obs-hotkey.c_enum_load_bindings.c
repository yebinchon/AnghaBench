
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ obs_hotkey_t ;
typedef int obs_data_array_t ;


 int UNUSED_PARAMETER (size_t) ;
 int load_bindings (TYPE_1__*,int *) ;
 int obs_data_array_release (int *) ;
 int * obs_data_get_array (void*,int ) ;

__attribute__((used)) static inline bool enum_load_bindings(void *data, size_t idx,
          obs_hotkey_t *hotkey)
{
 UNUSED_PARAMETER(idx);

 obs_data_array_t *hotkey_data = obs_data_get_array(data, hotkey->name);
 if (!hotkey_data)
  return 1;

 load_bindings(hotkey, hotkey_data);
 obs_data_array_release(hotkey_data);
 return 1;
}
