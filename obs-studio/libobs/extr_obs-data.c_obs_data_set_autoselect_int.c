
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int obs_set_int (int *,int *,char const*,long long,int ) ;
 int set_item_auto ;

void obs_data_set_autoselect_int(obs_data_t *data, const char *name,
     long long val)
{
 obs_set_int(data, ((void*)0), name, val, set_item_auto);
}
