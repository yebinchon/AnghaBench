
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_item_t ;


 long long data_item_get_int (int *,int ) ;
 int get_item_autoselect_data ;

long long obs_data_item_get_autoselect_int(obs_data_item_t *item)
{
 return data_item_get_int(item, get_item_autoselect_data);
}
