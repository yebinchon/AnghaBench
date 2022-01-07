
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int z; int y; int x; } ;
typedef int (* set_obj_t ) (int *,char const*,int *) ;
typedef int obs_data_t ;


 int * obs_data_create () ;
 int obs_data_release (int *) ;
 int obs_data_set_double (int *,char*,int ) ;

__attribute__((used)) static inline void set_vec3(obs_data_t *data, const char *name,
       const struct vec3 *val, set_obj_t set_obj)
{
 obs_data_t *obj = obs_data_create();
 obs_data_set_double(obj, "x", val->x);
 obs_data_set_double(obj, "y", val->y);
 obs_data_set_double(obj, "z", val->z);
 set_obj(data, name, obj);
 obs_data_release(obj);
}
