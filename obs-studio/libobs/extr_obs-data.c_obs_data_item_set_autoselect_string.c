
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_item_t ;


 int obs_set_string (int *,int **,int *,char const*,int ) ;
 int set_item_auto ;

void obs_data_item_set_autoselect_string(obs_data_item_t **item,
      const char *val)
{
 obs_set_string(((void*)0), item, ((void*)0), val, set_item_auto);
}
