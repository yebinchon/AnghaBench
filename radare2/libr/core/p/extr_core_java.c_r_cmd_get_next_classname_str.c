
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static const char * r_cmd_get_next_classname_str (const char * str, const char *match_me) {
 const char *result = ((void*)0);
 ut32 len = match_me && *match_me ? strlen (match_me) : 0;
 if (len && str && *str) {
  result = str;
  while (result && *result && (result - str < len)) {
   result = strstr (result, match_me);
   if (result) {
    break;
   }
  }
 }
 return result;
}
