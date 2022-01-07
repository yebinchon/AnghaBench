
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {size_t capacity; int type; size_t name_len; int ref; size_t default_len; size_t default_size; size_t autoselect_size; size_t data_len; size_t data_size; } ;
typedef enum obs_data_type { ____Placeholder_obs_data_type } obs_data_type ;


 struct obs_data_item* bzalloc (size_t) ;
 int get_item_data (struct obs_data_item*) ;
 int get_item_name (struct obs_data_item*) ;
 size_t get_name_align_size (char const*) ;
 int item_data_addref (struct obs_data_item*) ;
 int memcpy (int ,void const*,size_t) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static struct obs_data_item *obs_data_item_create(const char *name,
        const void *data, size_t size,
        enum obs_data_type type,
        bool default_data,
        bool autoselect_data)
{
 struct obs_data_item *item;
 size_t name_size, total_size;

 if (!name || !data)
  return ((void*)0);

 name_size = get_name_align_size(name);
 total_size = name_size + sizeof(struct obs_data_item) + size;

 item = bzalloc(total_size);

 item->capacity = total_size;
 item->type = type;
 item->name_len = name_size;
 item->ref = 1;

 if (default_data) {
  item->default_len = size;
  item->default_size = size;

 } else if (autoselect_data) {
  item->autoselect_size = size;

 } else {
  item->data_len = size;
  item->data_size = size;
 }

 strcpy(get_item_name(item), name);
 memcpy(get_item_data(item), data, size);

 item_data_addref(item);
 return item;
}
