
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * private_settings; } ;
typedef TYPE_1__ obs_sceneitem_t ;
typedef int obs_data_t ;


 int obs_data_addref (int *) ;
 int obs_ptr_valid (TYPE_1__*,char*) ;

obs_data_t *obs_sceneitem_get_private_settings(obs_sceneitem_t *item)
{
 if (!obs_ptr_valid(item, "obs_sceneitem_get_private_settings"))
  return ((void*)0);

 obs_data_addref(item->private_settings);
 return item->private_settings;
}
