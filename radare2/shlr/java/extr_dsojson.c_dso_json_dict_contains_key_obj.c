
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DsoJsonObj ;


 int dso_json_dict_contains_key_str (int *,int ) ;
 int dso_json_get_str_data (int *) ;

int dso_json_dict_contains_key_obj (DsoJsonObj *dict, DsoJsonObj *key) {
 return dso_json_dict_contains_key_str (dict, dso_json_get_str_data (key));
}
