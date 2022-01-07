
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_item_t ;


 int obs_data_item_detach (int *) ;
 int obs_data_item_release (int **) ;

void obs_data_item_remove(obs_data_item_t **item)
{
 if (item && *item) {
  obs_data_item_detach(*item);
  obs_data_item_release(item);
 }
}
