
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
typedef int obs_data_t ;


 int obs_data_set_default_obj ;
 int set_vec3 (int *,char const*,struct vec3 const*,int ) ;

void obs_data_set_default_vec3(obs_data_t *data, const char *name,
          const struct vec3 *val)
{
 set_vec3(data, name, val, obs_data_set_default_obj);
}
