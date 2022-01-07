
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {int autoselect_size; int default_size; int data_size; } ;


 void* get_data_ptr (struct obs_data_item*) ;

__attribute__((used)) static inline void *get_item_data(struct obs_data_item *item)
{
 if (!item->data_size && !item->default_size && !item->autoselect_size)
  return ((void*)0);
 return get_data_ptr(item);
}
