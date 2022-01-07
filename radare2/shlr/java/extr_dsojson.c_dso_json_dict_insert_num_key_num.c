
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DsoJsonObj ;


 int dso_json_dict_insert_key_obj (int *,int *,int *) ;
 int * dso_json_num_new_from_num (int) ;
 int dso_json_obj_del (int *) ;
 int * dso_json_str_new_from_num (int) ;

int dso_json_dict_insert_num_key_num (DsoJsonObj *dict, int key, int val) {
 DsoJsonObj *key_obj = dso_json_str_new_from_num (key),
   *val_obj = dso_json_num_new_from_num (val);
 int res = dso_json_dict_insert_key_obj (dict, key_obj, val_obj);
 if (!res) {
  dso_json_obj_del (key_obj);
 }
 return res;
}
