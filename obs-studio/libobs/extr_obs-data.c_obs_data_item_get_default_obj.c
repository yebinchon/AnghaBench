
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;
typedef int obs_data_item_t ;


 int * data_item_get_obj (int *,int ) ;
 int get_item_obj ;

obs_data_t *obs_data_item_get_default_obj(obs_data_item_t *item)
{
 return data_item_get_obj(item, get_item_obj);
}
