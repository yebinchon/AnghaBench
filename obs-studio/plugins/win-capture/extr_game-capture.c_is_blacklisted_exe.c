
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_PATH ;
 char** blacklisted_exes ;
 int strcat (char*,char*) ;
 scalar_t__ strcmpi (char*,char const*) ;
 int strcpy (char*,char const*) ;

__attribute__((used)) static bool is_blacklisted_exe(const char *exe)
{
 char cur_exe[MAX_PATH];

 if (!exe)
  return 0;

 for (const char **vals = blacklisted_exes; *vals; vals++) {
  strcpy(cur_exe, *vals);
  strcat(cur_exe, ".exe");

  if (strcmpi(cur_exe, exe) == 0)
   return 1;
 }

 return 0;
}
