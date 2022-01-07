
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AssertArg (int ) ;
 int AssertState (int ) ;
 int DEBUG3 ;
 char* Dynamic_library_path ;
 int ERRCODE_INVALID_NAME ;
 int ERROR ;
 int canonicalize_path (char*) ;
 int elog (int ,char*,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ file_exists (char*) ;
 int * first_dir_separator (char const*) ;
 char* first_path_var_separator (char const*) ;
 int is_absolute_path (char*) ;
 char* palloc (int) ;
 int pfree (char*) ;
 int sprintf (char*,char*,char*,char const*) ;
 int strlcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 char* substitute_libpath_macro (char*) ;

__attribute__((used)) static char *
find_in_dynamic_libpath(const char *basename)
{
 const char *p;
 size_t baselen;

 AssertArg(basename != ((void*)0));
 AssertArg(first_dir_separator(basename) == ((void*)0));
 AssertState(Dynamic_library_path != ((void*)0));

 p = Dynamic_library_path;
 if (strlen(p) == 0)
  return ((void*)0);

 baselen = strlen(basename);

 for (;;)
 {
  size_t len;
  char *piece;
  char *mangled;
  char *full;

  piece = first_path_var_separator(p);
  if (piece == p)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_NAME),
      errmsg("zero-length component in parameter \"dynamic_library_path\"")));

  if (piece == ((void*)0))
   len = strlen(p);
  else
   len = piece - p;

  piece = palloc(len + 1);
  strlcpy(piece, p, len + 1);

  mangled = substitute_libpath_macro(piece);
  pfree(piece);

  canonicalize_path(mangled);


  if (!is_absolute_path(mangled))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_NAME),
      errmsg("component in parameter \"dynamic_library_path\" is not an absolute path")));

  full = palloc(strlen(mangled) + 1 + baselen + 1);
  sprintf(full, "%s/%s", mangled, basename);
  pfree(mangled);

  elog(DEBUG3, "find_in_dynamic_libpath: trying \"%s\"", full);

  if (file_exists(full))
   return full;

  pfree(full);

  if (p[len] == '\0')
   break;
  else
   p += len + 1;
 }

 return ((void*)0);
}
