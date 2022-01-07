
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
typedef int RBinJavaObj ;


 int eprintf (char*,int ) ;
 int r_bin_java_print_field_idx_summary (int *,int ) ;

__attribute__((used)) static int r_cmd_java_print_field_summary (RBinJavaObj *obj, ut16 idx) {
 int res = r_bin_java_print_field_idx_summary (obj, idx);
 if (res == 0) {
  eprintf ("Error: Field or Method @ index (%d) not found in the RBinJavaObj.\n", idx);
  res = 1;
 }
 return res;
}
