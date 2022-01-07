
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_item_t ;
typedef int obs_data_array_t ;


 int obs_set_array (int *,int **,int *,int *,int ) ;
 int set_item ;

void obs_data_item_set_array(obs_data_item_t **item, obs_data_array_t *val)
{
 obs_set_array(((void*)0), item, ((void*)0), val, set_item);
}
