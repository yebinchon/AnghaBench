
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;
typedef int obs_data_array_t ;


 int obs_set_array (int *,int *,char const*,int *,int ) ;
 int set_item_auto ;

void obs_data_set_autoselect_array(obs_data_t *data, const char *name,
       obs_data_array_t *arr)
{
 obs_set_array(data, ((void*)0), name, arr, set_item_auto);
}
