
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int ut32 ;
typedef int ut16 ;
typedef int RCore ;
typedef int RBinJavaObj ;


 int r_cmd_java_get_cp_bytes_and_write (int *,int *,int ,int ,int *,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int r_cmd_java_handle_replace_cp_value_str (RCore *core, RBinJavaObj *obj, const char *cmd, ut16 idx, ut64 addr) {
 int res = 0;
 ut32 len = cmd && *cmd ? strlen (cmd) : 0;
 if (len > 0 && cmd && *cmd == '"') {
  cmd++;
  len = cmd && *cmd ? strlen (cmd) : 0;
 }
 if (cmd && len > 0) {
  res = r_cmd_java_get_cp_bytes_and_write (core, obj, idx, addr, (ut8 *) cmd, len);
 }
 return res;
}
