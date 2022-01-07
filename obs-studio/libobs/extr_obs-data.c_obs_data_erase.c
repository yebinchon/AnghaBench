
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {int dummy; } ;
typedef int obs_data_t ;


 struct obs_data_item* get_item (int *,char const*) ;
 int obs_data_item_detach (struct obs_data_item*) ;
 int obs_data_item_release (struct obs_data_item**) ;

void obs_data_erase(obs_data_t *data, const char *name)
{
 struct obs_data_item *item = get_item(data, name);

 if (item) {
  obs_data_item_detach(item);
  obs_data_item_release(&item);
 }
}
