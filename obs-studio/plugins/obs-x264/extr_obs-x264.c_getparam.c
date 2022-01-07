
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* bstrdup_n (char const*,int) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static bool getparam(const char *param, char **name, const char **value)
{
 const char *assign;

 if (!param || !*param || (*param == '='))
  return 0;

 assign = strchr(param, '=');
 if (!assign || !*assign || !*(assign + 1))
  return 0;

 *name = bstrdup_n(param, assign - param);
 *value = assign + 1;
 return 1;
}
