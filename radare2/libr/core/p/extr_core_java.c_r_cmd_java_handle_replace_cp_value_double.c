
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int ut16 ;
typedef int RCore ;
typedef int RBinJavaObj ;


 int r_cmd_java_get_cp_bytes_and_write (int *,int *,int ,int ,int *,int) ;
 double strtod (char const*,int *) ;

__attribute__((used)) static int r_cmd_java_handle_replace_cp_value_double (RCore *core, RBinJavaObj *obj, const char *cmd, ut16 idx, ut64 addr) {
 double value = cmd && *cmd ? strtod (cmd, ((void*)0)) : 0.0;
 int res = 0;
 res = r_cmd_java_get_cp_bytes_and_write (core, obj, idx, addr, (ut8 *) &value, 8);
 return res;
}
