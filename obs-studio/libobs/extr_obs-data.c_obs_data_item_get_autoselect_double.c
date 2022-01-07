
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_item_t ;


 double data_item_get_double (int *,int ) ;
 int get_item_autoselect_data ;

double obs_data_item_get_autoselect_double(obs_data_item_t *item)
{
 return data_item_get_double(item, get_item_autoselect_data);
}
