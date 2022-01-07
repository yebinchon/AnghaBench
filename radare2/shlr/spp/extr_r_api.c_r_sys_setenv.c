
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SetEnvironmentVariableA (char const*,char const*) ;
 int setenv (char const*,char const*,int) ;
 int unsetenv (char const*) ;

int r_sys_setenv(const char *key, const char *value) {
 if (!key) {
  return 0;
 }
 return 0;

}
