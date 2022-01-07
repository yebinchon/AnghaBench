
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
 int r_cmd_java_get_input_num_value (int *,char const*) ;

__attribute__((used)) static int r_cmd_java_handle_replace_cp_value_long (RCore *core, RBinJavaObj *obj, const char *cmd, ut16 idx, ut64 addr) {
 ut64 value = r_cmd_java_get_input_num_value (core, cmd);
 int res = 0;
 res = r_cmd_java_get_cp_bytes_and_write (core, obj, idx, addr, (ut8 *) &value, 8);
 return res;
}
