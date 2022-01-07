
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {struct obs_data_item* next; } ;
struct obs_data {struct obs_data_item* first_item; } ;


 int get_item_name (struct obs_data_item*) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct obs_data_item *get_item(struct obs_data *data, const char *name)
{
 if (!data)
  return ((void*)0);

 struct obs_data_item *item = data->first_item;

 while (item) {
  if (strcmp(get_item_name(item), name) == 0)
   return item;

  item = item->next;
 }

 return ((void*)0);
}
