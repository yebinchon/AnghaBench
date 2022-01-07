
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec2 {int dummy; } ;
typedef int obs_data_t ;


 int obs_data_set_obj ;
 int set_vec2 (int *,char const*,struct vec2 const*,int ) ;

void obs_data_set_vec2(obs_data_t *data, const char *name,
         const struct vec2 *val)
{
 set_vec2(data, name, val, obs_data_set_obj);
}
