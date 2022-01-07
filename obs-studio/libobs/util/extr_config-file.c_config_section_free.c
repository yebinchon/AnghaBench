
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; struct config_item* array; } ;
struct config_section {int name; TYPE_1__ items; } ;
struct config_item {int dummy; } ;


 int bfree (int ) ;
 int config_item_free (struct config_item*) ;
 int darray_free (TYPE_1__*) ;

__attribute__((used)) static inline void config_section_free(struct config_section *section)
{
 struct config_item *items = section->items.array;
 size_t i;

 for (i = 0; i < section->items.num; i++)
  config_item_free(items + i);

 darray_free(&section->items);
 bfree(section->name);
}
