
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;
typedef int obs_data_array_t ;


 int obs_set_array (int *,int *,char const*,int *,int ) ;
 int set_item ;

void obs_data_set_array(obs_data_t *data, const char *name,
   obs_data_array_t *array)
{
 obs_set_array(data, ((void*)0), name, array, set_item);
}
