
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec2 {int dummy; } ;
typedef int obs_data_t ;


 int get_vec2 (int ,struct vec2*) ;
 int obs_data_get_autoselect_obj (int *,char const*) ;

void obs_data_get_autoselect_vec2(obs_data_t *data, const char *name,
      struct vec2 *val)
{
 get_vec2(obs_data_get_autoselect_obj(data, name), val);
}
