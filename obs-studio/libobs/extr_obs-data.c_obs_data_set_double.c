
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 int obs_set_double (int *,int *,char const*,double,int ) ;
 int set_item ;

void obs_data_set_double(obs_data_t *data, const char *name, double val)
{
 obs_set_double(data, ((void*)0), name, val, set_item);
}
