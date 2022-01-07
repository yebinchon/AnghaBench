
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_item_t ;


 int obs_set_int (int *,int **,int *,long long,int ) ;
 int set_item ;

void obs_data_item_set_int(obs_data_item_t **item, long long val)
{
 obs_set_int(((void*)0), item, ((void*)0), val, set_item);
}
