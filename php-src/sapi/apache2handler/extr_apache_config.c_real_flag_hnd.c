
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmd_parms ;


 char const* real_value_hnd (int *,void*,char const*,char*,int) ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static const char *real_flag_hnd(cmd_parms *cmd, void *dummy, const char *arg1, const char *arg2, int status)
{
 char bool_val[2];

 if (!strcasecmp(arg2, "On") || (arg2[0] == '1' && arg2[1] == '\0')) {
  bool_val[0] = '1';
 } else {
  bool_val[0] = '0';
 }
 bool_val[1] = 0;

 return real_value_hnd(cmd, dummy, arg1, bool_val, status);
}
