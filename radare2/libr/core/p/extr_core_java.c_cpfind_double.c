
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RList ;
typedef int RCore ;
typedef int RBinJavaObj ;


 int R_BIN_JAVA_CP_DOUBLE ;
 int * r_bin_java_find_cp_const_by_val (int *,int const*,int,int ) ;
 int * r_list_new () ;
 double strtod (char const*,int *) ;

__attribute__((used)) static RList * cpfind_double (RCore *core, RBinJavaObj *obj, const char *cmd) {
 double value = cmd && *cmd ? strtod (cmd, ((void*)0)) : 0.0;
 if (value == 0.0 && !(cmd && cmd[0] == '0' && cmd[1] == '.' && cmd[2] == '0')) {
  return r_list_new ();
 }
 return r_bin_java_find_cp_const_by_val ( obj, (const ut8 *) &value, 8, R_BIN_JAVA_CP_DOUBLE);
}
