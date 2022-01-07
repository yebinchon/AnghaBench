
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_data_item {int dummy; } ;


 int bfree (struct obs_data_item*) ;
 int item_autoselect_data_release (struct obs_data_item*) ;
 int item_data_release (struct obs_data_item*) ;
 int item_default_data_release (struct obs_data_item*) ;
 int obs_data_item_detach (struct obs_data_item*) ;

__attribute__((used)) static inline void obs_data_item_destroy(struct obs_data_item *item)
{
 item_data_release(item);
 item_default_data_release(item);
 item_autoselect_data_release(item);
 obs_data_item_detach(item);
 bfree(item);
}
