
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* api_json_set (char const*,char const*,char*) ;
 int sprintf (char*,char*,int) ;

char *api_json_seti (const char *s, const char *k, int a) {
 char str[64];
 sprintf (str, "%d", a);
 return api_json_set (s, k, str);
}
