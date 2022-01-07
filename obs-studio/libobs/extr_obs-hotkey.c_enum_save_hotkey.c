
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ obs_hotkey_t ;
typedef int obs_data_array_t ;


 int UNUSED_PARAMETER (size_t) ;
 int obs_data_array_release (int *) ;
 int obs_data_set_array (void*,int ,int *) ;
 int * save_hotkey (TYPE_1__*) ;

__attribute__((used)) static inline bool enum_save_hotkey(void *data, size_t idx,
        obs_hotkey_t *hotkey)
{
 UNUSED_PARAMETER(idx);

 obs_data_array_t *hotkey_data = save_hotkey(hotkey);
 obs_data_set_array(data, hotkey->name, hotkey_data);
 obs_data_array_release(hotkey_data);
 return 1;
}
