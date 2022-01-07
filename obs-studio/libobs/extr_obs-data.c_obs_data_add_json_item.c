
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;
typedef int json_t ;


 int json_integer_value (int *) ;
 scalar_t__ json_is_array (int *) ;
 scalar_t__ json_is_false (int *) ;
 scalar_t__ json_is_integer (int *) ;
 scalar_t__ json_is_object (int *) ;
 scalar_t__ json_is_real (int *) ;
 scalar_t__ json_is_string (int *) ;
 scalar_t__ json_is_true (int *) ;
 int json_real_value (int *) ;
 int json_string_value (int *) ;
 int obs_data_add_json_array (int *,char const*,int *) ;
 int obs_data_add_json_object (int *,char const*,int *) ;
 int obs_data_set_bool (int *,char const*,int) ;
 int obs_data_set_double (int *,char const*,int ) ;
 int obs_data_set_int (int *,char const*,int ) ;
 int obs_data_set_string (int *,char const*,int ) ;

__attribute__((used)) static void obs_data_add_json_item(obs_data_t *data, const char *key,
       json_t *json)
{
 if (json_is_object(json))
  obs_data_add_json_object(data, key, json);
 else if (json_is_array(json))
  obs_data_add_json_array(data, key, json);
 else if (json_is_string(json))
  obs_data_set_string(data, key, json_string_value(json));
 else if (json_is_integer(json))
  obs_data_set_int(data, key, json_integer_value(json));
 else if (json_is_real(json))
  obs_data_set_double(data, key, json_real_value(json));
 else if (json_is_true(json))
  obs_data_set_bool(data, key, 1);
 else if (json_is_false(json))
  obs_data_set_bool(data, key, 0);
}
