
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct obs_data_item {int data_len; scalar_t__ type; size_t default_len; size_t autoselect_size; scalar_t__ data_size; } ;
typedef int obs_data_t ;
typedef int obs_data_array_t ;


 scalar_t__ OBS_DATA_ARRAY ;
 scalar_t__ OBS_DATA_OBJECT ;
 void* get_item_data (struct obs_data_item*) ;
 int memmove (void*,int *,size_t) ;
 int obs_data_array_release (int *) ;
 int obs_data_release (int *) ;

__attribute__((used)) static inline void clear_item(struct obs_data_item *item)
{
 void *ptr = get_item_data(item);
 size_t size;

 if (item->data_len) {
  if (item->type == OBS_DATA_OBJECT) {
   obs_data_t **obj = item->data_size ? ptr : ((void*)0);

   if (obj && *obj)
    obs_data_release(*obj);

  } else if (item->type == OBS_DATA_ARRAY) {
   obs_data_array_t **array = item->data_size ? ptr : ((void*)0);

   if (array && *array)
    obs_data_array_release(*array);
  }

  size = item->default_len + item->autoselect_size;
  if (size)
   memmove(ptr, (uint8_t *)ptr + item->data_len, size);

  item->data_size = 0;
  item->data_len = 0;
 }
}
