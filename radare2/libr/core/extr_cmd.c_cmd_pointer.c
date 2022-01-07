
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int free (char*) ;
 int help_msg_star ;
 int r_core_cmd_help (int *,int ) ;
 int r_core_cmdf (int *,char*,char const*,...) ;
 char* r_str_trim_ro (char const*) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int cmd_pointer(void *data, const char *input) {
 RCore *core = (RCore*) data;
 int ret = 1;
 char *str, *eq;
 input = r_str_trim_ro (input);
 while (*input == ' ') {
  input++;
 }
 if (!*input || *input == '?') {
  r_core_cmd_help (core, help_msg_star);
  return ret;
 }
 str = strdup (input);
 eq = strchr (str, '=');
 if (eq) {
  *eq++ = 0;
  if (!strncmp (eq, "0x", 2)) {
   ret = r_core_cmdf (core, "wv %s@%s", eq, str);
  } else {
   ret = r_core_cmdf (core, "wx %s@%s", eq, str);
  }
 } else {
  ret = r_core_cmdf (core, "?v [%s]", input);
 }
 free (str);
 return ret;
}
