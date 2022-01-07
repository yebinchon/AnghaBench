
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int get_item (int *,char const*) ;
 long long obs_data_item_get_int (int ) ;

long long obs_data_get_int(obs_data_t *data, const char *name)
{
 return obs_data_item_get_int(get_item(data, name));
}
