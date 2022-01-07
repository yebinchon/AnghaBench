
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ astrcmpi_n (char const*,char const*,int ) ;
 char** internal_microsoft_exes ;
 int strlen (char const*) ;

__attribute__((used)) static bool is_microsoft_internal_window_exe(const char *exe)
{
 if (!exe)
  return 0;

 for (const char **vals = internal_microsoft_exes; *vals; vals++) {
  if (astrcmpi_n(exe, *vals, strlen(*vals)) == 0)
   return 1;
 }

 return 0;
}
