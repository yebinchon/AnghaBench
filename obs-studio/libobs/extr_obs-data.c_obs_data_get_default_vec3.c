
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
typedef int obs_data_t ;


 int get_vec3 (int ,struct vec3*) ;
 int obs_data_get_default_obj (int *,char const*) ;

void obs_data_get_default_vec3(obs_data_t *data, const char *name,
          struct vec3 *val)
{
 get_vec3(obs_data_get_default_obj(data, name), val);
}
