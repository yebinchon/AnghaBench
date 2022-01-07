
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut16 ;
typedef int RBinJavaObj ;


 int r_bin_java_resolve_cp_idx_print_summary (int *,scalar_t__) ;

__attribute__((used)) static int r_cmd_java_resolve_cp_summary (RBinJavaObj *obj, ut16 idx) {
 if (obj && idx){
  r_bin_java_resolve_cp_idx_print_summary (obj, idx) ;
 }
 return 1;
}
