
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AssertArg (char const*) ;
 int DLSUFFIX ;
 scalar_t__ file_exists (char*) ;
 char* find_in_dynamic_libpath (char const*) ;
 int * first_dir_separator (char const*) ;
 int pfree (char*) ;
 char* psprintf (char*,char const*,int ) ;
 char* pstrdup (char const*) ;
 char* substitute_libpath_macro (char const*) ;

__attribute__((used)) static char *
expand_dynamic_library_name(const char *name)
{
 bool have_slash;
 char *new;
 char *full;

 AssertArg(name);

 have_slash = (first_dir_separator(name) != ((void*)0));

 if (!have_slash)
 {
  full = find_in_dynamic_libpath(name);
  if (full)
   return full;
 }
 else
 {
  full = substitute_libpath_macro(name);
  if (file_exists(full))
   return full;
  pfree(full);
 }

 new = psprintf("%s%s", name, DLSUFFIX);

 if (!have_slash)
 {
  full = find_in_dynamic_libpath(new);
  pfree(new);
  if (full)
   return full;
 }
 else
 {
  full = substitute_libpath_macro(new);
  pfree(new);
  if (file_exists(full))
   return full;
  pfree(full);
 }





 return pstrdup(name);
}
