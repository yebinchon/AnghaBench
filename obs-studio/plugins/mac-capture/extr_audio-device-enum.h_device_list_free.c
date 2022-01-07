
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct device_list {TYPE_1__ items; } ;


 int da_free (TYPE_1__) ;
 int device_item_free (scalar_t__) ;

__attribute__((used)) static inline void device_list_free(struct device_list *list)
{
 for (size_t i = 0; i < list->items.num; i++)
  device_item_free(list->items.array + i);

 da_free(list->items);
}
