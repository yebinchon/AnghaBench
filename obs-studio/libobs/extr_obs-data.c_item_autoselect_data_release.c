
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {scalar_t__ type; } ;
typedef int obs_data_t ;
typedef int obs_data_array_t ;


 scalar_t__ OBS_DATA_ARRAY ;
 scalar_t__ OBS_DATA_OBJECT ;
 int * get_item_autoselect_array (struct obs_data_item*) ;
 int * get_item_autoselect_obj (struct obs_data_item*) ;
 int obs_data_array_release (int *) ;
 int obs_data_release (int *) ;

__attribute__((used)) static inline void item_autoselect_data_release(struct obs_data_item *item)
{
 if (item->type == OBS_DATA_OBJECT) {
  obs_data_t *obj = get_item_autoselect_obj(item);
  obs_data_release(obj);

 } else if (item->type == OBS_DATA_ARRAY) {
  obs_data_array_t *array = get_item_autoselect_array(item);
  obs_data_array_release(array);
 }
}
