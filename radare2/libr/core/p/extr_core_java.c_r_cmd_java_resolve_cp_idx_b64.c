
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut16 ;
typedef int RBinJavaObj ;


 int free (char*) ;
 char* r_bin_java_resolve_b64_encode (int *,scalar_t__) ;
 int r_cons_println (char*) ;

__attribute__((used)) static int r_cmd_java_resolve_cp_idx_b64 (RBinJavaObj *obj, ut16 idx) {
 if (obj && idx){
  char * str = r_bin_java_resolve_b64_encode (obj, idx) ;
  r_cons_println (str);
  free (str);
 }
 return 1;
}
