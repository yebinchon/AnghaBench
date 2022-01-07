
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static char *get_args_offset(const char *arg) {
 char *args = strchr (arg, ' ');
 char *sq_bracket = strchr (arg, '[');
 int max = 30;
 if (args && sq_bracket) {
  char *csq_bracket = strchr (arg, ']');
  while (args && csq_bracket && csq_bracket > args && max--) {
   args = strchr (csq_bracket, ' ');
  }
 }
 return args;
}
