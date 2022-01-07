
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {scalar_t__ type; } ;
typedef int obs_data_t ;
typedef int obs_data_array_t ;


 scalar_t__ OBS_DATA_ARRAY ;
 scalar_t__ OBS_DATA_OBJECT ;
 int * get_item_array (struct obs_data_item*) ;
 int * get_item_obj (struct obs_data_item*) ;
 int obs_data_array_release (int *) ;
 int obs_data_item_has_user_value (struct obs_data_item*) ;
 int obs_data_release (int *) ;

__attribute__((used)) static inline void item_data_release(struct obs_data_item *item)
{
 if (!obs_data_item_has_user_value(item))
  return;

 if (item->type == OBS_DATA_OBJECT) {
  obs_data_t *obj = get_item_obj(item);
  obs_data_release(obj);

 } else if (item->type == OBS_DATA_ARRAY) {
  obs_data_array_t *array = get_item_array(item);
  obs_data_array_release(array);
 }
}
