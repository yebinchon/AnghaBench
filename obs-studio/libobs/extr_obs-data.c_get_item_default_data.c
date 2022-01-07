
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {scalar_t__ default_size; } ;


 void* get_default_data_ptr (struct obs_data_item*) ;

__attribute__((used)) static inline void *get_item_default_data(struct obs_data_item *item)
{
 return item->default_size ? get_default_data_ptr(item) : ((void*)0);
}
