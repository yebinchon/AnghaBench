
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {struct obs_data_item* next; } ;
struct obs_data {int json; struct obs_data_item* first_item; } ;


 int bfree (struct obs_data*) ;
 int free (int ) ;
 int obs_data_item_release (struct obs_data_item**) ;

__attribute__((used)) static inline void obs_data_destroy(struct obs_data *data)
{
 struct obs_data_item *item = data->first_item;

 while (item) {
  struct obs_data_item *next = item->next;
  obs_data_item_release(&item);
  item = next;
 }


 free(data->json);
 bfree(data);
}
