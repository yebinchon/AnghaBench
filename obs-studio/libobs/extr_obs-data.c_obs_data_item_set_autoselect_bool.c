
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_item_t ;


 int obs_set_bool (int *,int **,int *,int,int ) ;
 int set_item_auto ;

void obs_data_item_set_autoselect_bool(obs_data_item_t **item, bool val)
{
 obs_set_bool(((void*)0), item, ((void*)0), val, set_item_auto);
}
