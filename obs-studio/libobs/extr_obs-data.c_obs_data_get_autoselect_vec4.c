
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {int dummy; } ;
typedef int obs_data_t ;


 int get_vec4 (int ,struct vec4*) ;
 int obs_data_get_autoselect_obj (int *,char const*) ;

void obs_data_get_autoselect_vec4(obs_data_t *data, const char *name,
      struct vec4 *val)
{
 get_vec4(obs_data_get_autoselect_obj(data, name), val);
}
