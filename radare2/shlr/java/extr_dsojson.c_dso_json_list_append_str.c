
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DsoJsonObj ;


 scalar_t__ DSO_JSON_LIST ;
 int dso_json_list_append (int *,int *) ;
 int dso_json_obj_del (int *) ;
 int * dso_json_str_new_from_str (char*) ;
 scalar_t__ get_type (int *) ;

int dso_json_list_append_str (DsoJsonObj *list_obj, char *y) {
 if (get_type (list_obj) == DSO_JSON_LIST) {
  DsoJsonObj *val = dso_json_str_new_from_str (y);
  int res = dso_json_list_append (list_obj, val);
  if (!res) dso_json_obj_del (val);
  return res;
 }
 return 0;
}
