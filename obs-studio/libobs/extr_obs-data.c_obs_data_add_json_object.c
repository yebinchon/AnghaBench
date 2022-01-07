
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;
typedef int json_t ;


 int obs_data_add_json_object_data (int *,int *) ;
 int * obs_data_create () ;
 int obs_data_release (int *) ;
 int obs_data_set_obj (int *,char const*,int *) ;

__attribute__((used)) static inline void obs_data_add_json_object(obs_data_t *data, const char *key,
         json_t *jobj)
{
 obs_data_t *sub_obj = obs_data_create();

 obs_data_add_json_object_data(sub_obj, jobj);
 obs_data_set_obj(data, key, sub_obj);
 obs_data_release(sub_obj);
}
