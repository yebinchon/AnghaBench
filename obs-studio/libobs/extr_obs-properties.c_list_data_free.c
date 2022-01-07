
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct list_data {TYPE_1__ items; } ;


 int da_free (TYPE_1__) ;
 int list_item_free (struct list_data*,scalar_t__) ;

__attribute__((used)) static inline void list_data_free(struct list_data *data)
{
 for (size_t i = 0; i < data->items.num; i++)
  list_item_free(data, data->items.array + i);

 da_free(data->items);
}
