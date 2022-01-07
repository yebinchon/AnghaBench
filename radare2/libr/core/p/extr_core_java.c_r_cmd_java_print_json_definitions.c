
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RBinJavaObj ;
typedef int DsoJsonObj ;


 int dso_json_obj_del (int *) ;
 char* dso_json_obj_to_str (int *) ;
 int * r_bin_java_get_bin_obj_json (int *) ;
 int r_cons_println (char*) ;

__attribute__((used)) static int r_cmd_java_print_json_definitions( RBinJavaObj *obj ) {
 DsoJsonObj *json_obj = r_bin_java_get_bin_obj_json (obj);
 char *str = dso_json_obj_to_str (json_obj);
 dso_json_obj_del (json_obj);
 r_cons_println (str);
 return 1;
}
