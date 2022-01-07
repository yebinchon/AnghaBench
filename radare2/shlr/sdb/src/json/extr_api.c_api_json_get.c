
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Rangstr ;


 int json_get (char const*,char const*) ;
 char* rangstr_dup (int *) ;

char *api_json_get (const char *s, const char *p) {
 Rangstr rs = json_get (s, p);
 return rangstr_dup (&rs);
}
