
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_list {int items; } ;
struct device_item {int dummy; } ;


 int da_push_back (int ,struct device_item*) ;
 int memset (struct device_item*,int ,int) ;

__attribute__((used)) static inline void device_list_add(struct device_list *list,
       struct device_item *item)
{
 da_push_back(list->items, item);
 memset(item, 0, sizeof(struct device_item));
}
