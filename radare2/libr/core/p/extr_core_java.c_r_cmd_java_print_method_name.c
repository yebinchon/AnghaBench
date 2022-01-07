
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
typedef int RBinJavaObj ;


 int eprintf (char*,int ) ;
 int free (char*) ;
 char* r_bin_java_get_method_name (int *,int ) ;
 int r_cons_println (char*) ;

__attribute__((used)) static int r_cmd_java_print_method_name (RBinJavaObj *obj, ut16 idx) {
 char * res = r_bin_java_get_method_name (obj, idx);
 if (res) {
  r_cons_println (res);
 } else {
  eprintf ("Error: Field or Method @ index (%d) not found in the RBinJavaObj.\n", idx);
 }
 free (res);
 return 1;
}
