
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {int dummy; } ;
typedef int obs_data_t ;


 int obs_data_set_autoselect_obj ;
 int set_vec4 (int *,char const*,struct vec4 const*,int ) ;

void obs_data_set_autoselect_vec4(obs_data_t *data, const char *name,
      const struct vec4 *val)
{
 set_vec4(data, name, val, obs_data_set_autoselect_obj);
}
