
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {int type; size_t default_size; size_t default_len; size_t data_len; size_t data_size; scalar_t__ autoselect_size; } ;
typedef enum obs_data_type { ____Placeholder_obs_data_type } obs_data_type ;


 size_t get_align_size (size_t) ;
 void* get_autoselect_data_ptr (struct obs_data_item*) ;
 int get_item_default_data (struct obs_data_item*) ;
 int item_default_data_addref (struct obs_data_item*) ;
 int item_default_data_release (struct obs_data_item*) ;
 int memcpy (int ,void const*,size_t) ;
 int move_data (struct obs_data_item*,void*,struct obs_data_item*,void*,scalar_t__) ;
 struct obs_data_item* obs_data_item_ensure_capacity (struct obs_data_item*) ;

__attribute__((used)) static inline void obs_data_item_set_default_data(struct obs_data_item **p_item,
        const void *data, size_t size,
        enum obs_data_type type)
{
 if (!p_item || !*p_item)
  return;

 struct obs_data_item *item = *p_item;
 void *old_autoselect_data = get_autoselect_data_ptr(item);
 item_default_data_release(item);

 item->type = type;
 item->default_size = size;
 item->default_len = item->autoselect_size ? get_align_size(size) : size;
 item->data_len = item->data_size ? get_align_size(item->data_size) : 0;
 item = obs_data_item_ensure_capacity(item);

 if (item->autoselect_size)
  move_data(*p_item, old_autoselect_data, item,
     get_autoselect_data_ptr(item), item->autoselect_size);

 if (size) {
  memcpy(get_item_default_data(item), data, size);
  item_default_data_addref(item);
 }

 *p_item = item;
}
