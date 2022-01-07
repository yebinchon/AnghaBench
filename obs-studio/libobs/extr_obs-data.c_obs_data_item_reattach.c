
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {int parent; } ;


 struct obs_data_item** get_item_prev_next (int ,struct obs_data_item*) ;

__attribute__((used)) static inline void obs_data_item_reattach(struct obs_data_item *old_ptr,
       struct obs_data_item *new_ptr)
{
 struct obs_data_item **prev_next =
  get_item_prev_next(new_ptr->parent, old_ptr);

 if (prev_next)
  *prev_next = new_ptr;
}
