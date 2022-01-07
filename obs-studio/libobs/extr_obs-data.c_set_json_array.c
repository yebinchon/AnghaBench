
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;
typedef int obs_data_item_t ;
typedef int obs_data_array_t ;
typedef int json_t ;


 int * json_array () ;
 int json_array_append_new (int *,int *) ;
 int json_object_set_new (int *,char const*,int *) ;
 size_t obs_data_array_count (int *) ;
 int * obs_data_array_item (int *,size_t) ;
 int obs_data_array_release (int *) ;
 int * obs_data_item_get_array (int *) ;
 int obs_data_release (int *) ;
 int * obs_data_to_json (int *) ;

__attribute__((used)) static inline void set_json_array(json_t *json, const char *name,
      obs_data_item_t *item)
{
 json_t *jarray = json_array();
 obs_data_array_t *array = obs_data_item_get_array(item);
 size_t count = obs_data_array_count(array);

 for (size_t idx = 0; idx < count; idx++) {
  obs_data_t *sub_item = obs_data_array_item(array, idx);
  json_t *jitem = obs_data_to_json(sub_item);
  json_array_append_new(jarray, jitem);
  obs_data_release(sub_item);
 }

 json_object_set_new(json, name, jarray);
 obs_data_array_release(array);
}
