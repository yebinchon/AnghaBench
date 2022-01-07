
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RList ;
typedef int DsoJsonObj ;


 scalar_t__ DSO_JSON_STR ;
 int dso_json_dict_contains_key_obj (int *,int *) ;
 int * dso_json_dict_entry_new_from_key_obj_val_obj (int *,int *) ;
 int dso_json_dict_free (int *) ;
 int dso_json_dict_remove_key_obj (int *,int *) ;
 int * dso_json_get_list (int *) ;
 int * dso_json_null_new () ;
 int dso_json_obj_del (int *) ;
 scalar_t__ get_type (int *) ;
 int r_list_append (int *,int *) ;

int dso_json_dict_insert_key_obj (DsoJsonObj *dict, DsoJsonObj *key, DsoJsonObj *value) {
 int res = 0;
 RList* the_list = dso_json_get_list (dict);
 if (!the_list) return 0;
 if (get_type (key) != DSO_JSON_STR) return 0;
 if (!value) value = dso_json_null_new ();
 if (value && key && !dso_json_dict_contains_key_obj (dict, key)) {
  DsoJsonObj *entry = dso_json_dict_entry_new_from_key_obj_val_obj (key, value);
  r_list_append (the_list, entry);
  res = 1;

 } else if (value && key && !dso_json_dict_remove_key_obj (dict, key)) {
  DsoJsonObj *entry = dso_json_dict_entry_new_from_key_obj_val_obj (key, value);
  r_list_append (the_list, entry);
  res = 1;
 } else {
  dso_json_obj_del (value);
  dso_json_dict_free (value);
 }
 return res;
}
