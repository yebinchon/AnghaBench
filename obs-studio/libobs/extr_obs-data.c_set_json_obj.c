
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;
typedef int obs_data_item_t ;
typedef int json_t ;


 int json_object_set_new (int *,char const*,int ) ;
 int * obs_data_item_get_obj (int *) ;
 int obs_data_release (int *) ;
 int obs_data_to_json (int *) ;

__attribute__((used)) static inline void set_json_obj(json_t *json, const char *name,
    obs_data_item_t *item)
{
 obs_data_t *obj = obs_data_item_get_obj(item);
 json_object_set_new(json, name, obs_data_to_json(obj));
 obs_data_release(obj);
}
