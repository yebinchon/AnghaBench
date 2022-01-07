
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_item_t ;
typedef int json_t ;


 int json_object_set_new (int *,char const*,int ) ;
 int json_string (char const*) ;
 char* obs_data_item_get_string (int *) ;

__attribute__((used)) static inline void set_json_string(json_t *json, const char *name,
       obs_data_item_t *item)
{
 const char *val = obs_data_item_get_string(item);
 json_object_set_new(json, name, json_string(val));
}
