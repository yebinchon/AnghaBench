
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DsoJsonObj ;


 int dso_json_dict_entry_value_set_obj (int *,int *) ;
 int * dso_json_dict_new () ;
 scalar_t__ dso_json_is_dict_entry (int *) ;

int dso_json_dict_entry_value_set_empty_dict (DsoJsonObj *entry_obj) {
 int res = 0;
 if (dso_json_is_dict_entry (entry_obj)) {
  DsoJsonObj *o_val = dso_json_dict_new ();
  res = dso_json_dict_entry_value_set_obj (entry_obj, o_val);
 }
 return res;
}
