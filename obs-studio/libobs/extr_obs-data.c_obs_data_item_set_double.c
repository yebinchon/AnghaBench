
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_item_t ;


 int obs_set_double (int *,int **,int *,double,int ) ;
 int set_item ;

void obs_data_item_set_double(obs_data_item_t **item, double val)
{
 obs_set_double(((void*)0), item, ((void*)0), val, set_item);
}
