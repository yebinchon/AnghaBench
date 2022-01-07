
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int obs_set_string (int *,int *,char const*,char const*,int ) ;
 int set_item ;

void obs_data_set_string(obs_data_t *data, const char *name, const char *val)
{
 obs_set_string(data, ((void*)0), name, val, set_item);
}
