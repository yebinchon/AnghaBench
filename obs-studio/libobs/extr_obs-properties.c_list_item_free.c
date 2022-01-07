
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_item {int str; int name; } ;
struct list_data {scalar_t__ format; } ;


 scalar_t__ OBS_COMBO_FORMAT_STRING ;
 int bfree (int ) ;

__attribute__((used)) static inline void list_item_free(struct list_data *data,
      struct list_item *item)
{
 bfree(item->name);
 if (data->format == OBS_COMBO_FORMAT_STRING)
  bfree(item->str);
}
