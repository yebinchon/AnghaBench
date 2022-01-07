
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DsoJsonObj ;


 int dso_json_dict_insert_key_obj (int *,int *,int *) ;
 int dso_json_obj_del (int *) ;
 int * dso_json_str_new_from_str (char*) ;

int dso_json_dict_insert_str_key_obj (DsoJsonObj *dict, char *key, DsoJsonObj *val_obj) {
 DsoJsonObj *key_obj = dso_json_str_new_from_str (key);
 int res = dso_json_dict_insert_key_obj (dict, key_obj, val_obj);
 if (!res) {
  dso_json_obj_del (key_obj);
 }
 return res;
}
