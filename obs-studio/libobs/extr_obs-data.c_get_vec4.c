
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {float x; float y; float z; float w; } ;
typedef int obs_data_t ;


 scalar_t__ obs_data_get_double (int *,char*) ;
 int obs_data_release (int *) ;

__attribute__((used)) static inline void get_vec4(obs_data_t *obj, struct vec4 *val)
{
 if (!obj)
  return;

 val->x = (float)obs_data_get_double(obj, "x");
 val->y = (float)obs_data_get_double(obj, "y");
 val->z = (float)obs_data_get_double(obj, "z");
 val->w = (float)obs_data_get_double(obj, "w");
 obs_data_release(obj);
}
