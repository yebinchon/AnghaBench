
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* backtrace_symbol_list ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static bool
matches_backtrace_functions(const char *funcname)
{
 char *p;

 if (!backtrace_symbol_list || funcname == ((void*)0) || funcname[0] == '\0')
  return 0;

 p = backtrace_symbol_list;
 for (;;)
 {
  if (*p == '\0')
   break;

  if (strcmp(funcname, p) == 0)
   return 1;
  p += strlen(p) + 1;
 }

 return 0;
}
