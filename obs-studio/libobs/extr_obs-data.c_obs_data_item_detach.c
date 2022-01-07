
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {struct obs_data_item* next; int parent; } ;


 struct obs_data_item** get_item_prev_next (int ,struct obs_data_item*) ;

__attribute__((used)) static inline void obs_data_item_detach(struct obs_data_item *item)
{
 struct obs_data_item **prev_next =
  get_item_prev_next(item->parent, item);

 if (prev_next) {
  *prev_next = item->next;
  item->next = ((void*)0);
 }
}
