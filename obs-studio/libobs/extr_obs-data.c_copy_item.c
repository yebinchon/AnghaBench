
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {int type; int data_size; } ;
struct obs_data {int dummy; } ;
typedef int obs_data_t ;
typedef int obs_data_array_t ;


 int OBS_DATA_ARRAY ;
 int OBS_DATA_OBJECT ;
 int copy_array (struct obs_data*,char const*,int *,int ) ;
 int copy_obj (struct obs_data*,char const*,int *,int ) ;
 void* get_item_data (struct obs_data_item*) ;
 char* get_item_name (struct obs_data_item*) ;
 int obs_data_set_array ;
 int obs_data_set_obj ;
 int set_item (struct obs_data*,int *,char const*,void*,int ,int ) ;

__attribute__((used)) static inline void copy_item(struct obs_data *data, struct obs_data_item *item)
{
 const char *name = get_item_name(item);
 void *ptr = get_item_data(item);

 if (item->type == OBS_DATA_OBJECT) {
  obs_data_t **obj = item->data_size ? ptr : ((void*)0);

  if (obj)
   copy_obj(data, name, *obj, obs_data_set_obj);

 } else if (item->type == OBS_DATA_ARRAY) {
  obs_data_array_t **array = item->data_size ? ptr : ((void*)0);

  if (array)
   copy_array(data, name, *array, obs_data_set_array);

 } else {
  if (item->data_size)
   set_item(data, ((void*)0), name, ptr, item->data_size,
     item->type);
 }
}
