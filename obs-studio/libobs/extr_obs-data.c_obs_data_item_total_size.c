
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {size_t name_len; size_t data_len; size_t default_len; size_t autoselect_size; } ;



__attribute__((used)) static inline size_t obs_data_item_total_size(struct obs_data_item *item)
{
 return sizeof(struct obs_data_item) + item->name_len + item->data_len +
        item->default_len + item->autoselect_size;
}
