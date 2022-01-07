
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ R_STR_ISEMPTY (char const*) ;
 char* r_str_newlen (char const*,int) ;

char *__parse_panels_config(const char *cfg, int len) {
 if (R_STR_ISEMPTY (cfg) || len < 2) {
  return ((void*)0);
 }
 char *tmp = r_str_newlen (cfg, len + 1);
 int i = 0;
 for (; i < len; i++) {
  if (tmp[i] == '}') {
   if (i + 1 < len) {
    if (tmp[i + 1] == ',') {
     tmp[i + 1] = '\n';
    }
    continue;
   }
   tmp[i + 1] = '\n';
  }
 }
 return tmp;
}
