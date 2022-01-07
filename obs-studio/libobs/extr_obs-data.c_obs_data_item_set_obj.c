
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;
typedef int obs_data_item_t ;


 int obs_set_obj (int *,int **,int *,int *,int ) ;
 int set_item ;

void obs_data_item_set_obj(obs_data_item_t **item, obs_data_t *val)
{
 obs_set_obj(((void*)0), item, ((void*)0), val, set_item);
}
