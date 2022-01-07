
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int cmd_help_percent (int *) ;
 int r_core_cmdf (int *,char*,char const*) ;

__attribute__((used)) static int cmd_env(void *data, const char *input) {
 RCore *core = (RCore*)data;
 int ret = 1;
 switch (*input) {
 case '?':
  cmd_help_percent (core);
  break;
 default:
  ret = r_core_cmdf (core, "env %s", input);
 }
 return ret;
}
