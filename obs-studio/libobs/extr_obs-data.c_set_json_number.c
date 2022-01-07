
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_item_t ;
typedef int json_t ;
typedef enum obs_data_number_type { ____Placeholder_obs_data_number_type } obs_data_number_type ;


 int OBS_DATA_NUM_INT ;
 int json_integer (long long) ;
 int json_object_set_new (int *,char const*,int ) ;
 int json_real (double) ;
 double obs_data_item_get_double (int *) ;
 long long obs_data_item_get_int (int *) ;
 int obs_data_item_numtype (int *) ;

__attribute__((used)) static inline void set_json_number(json_t *json, const char *name,
       obs_data_item_t *item)
{
 enum obs_data_number_type type = obs_data_item_numtype(item);

 if (type == OBS_DATA_NUM_INT) {
  long long val = obs_data_item_get_int(item);
  json_object_set_new(json, name, json_integer(val));
 } else {
  double val = obs_data_item_get_double(item);
  json_object_set_new(json, name, json_real(val));
 }
}
