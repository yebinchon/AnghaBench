
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int obs_set_obj (int *,int *,char const*,int *,int ) ;
 int set_item_auto ;

void obs_data_set_autoselect_obj(obs_data_t *data, const char *name,
     obs_data_t *obj)
{
 obs_set_obj(data, ((void*)0), name, obj, set_item_auto);
}
