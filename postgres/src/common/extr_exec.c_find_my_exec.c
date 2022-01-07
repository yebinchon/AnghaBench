
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_UNDEFINED_FILE ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int MAXPGPATH ;
 int Min (int,int) ;
 int StrNCpy (char*,char const*,int) ;
 int _ (char*) ;
 int canonicalize_path (char*) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int * first_dir_separator (char const*) ;
 char* first_path_var_separator (char*) ;
 int getcwd (char*,int) ;
 char* getenv (char*) ;
 scalar_t__ is_absolute_path (char const*) ;
 int join_path_components (char*,char*,char const*) ;
 int log_error (int ,int ,...) ;
 int resolve_symlinks (char*) ;
 int strlen (char*) ;
 int validate_exec (char*) ;

int
find_my_exec(const char *argv0, char *retpath)
{
 char cwd[MAXPGPATH],
    test_path[MAXPGPATH];
 char *path;

 if (!getcwd(cwd, MAXPGPATH))
 {
  log_error(errcode_for_file_access(),
      _("could not identify current directory: %m"));
  return -1;
 }




 if (first_dir_separator(argv0) != ((void*)0))
 {
  if (is_absolute_path(argv0))
   StrNCpy(retpath, argv0, MAXPGPATH);
  else
   join_path_components(retpath, cwd, argv0);
  canonicalize_path(retpath);

  if (validate_exec(retpath) == 0)
   return resolve_symlinks(retpath);

  log_error(errcode(ERRCODE_WRONG_OBJECT_TYPE),
      _("invalid binary \"%s\""), retpath);
  return -1;
 }
 if ((path = getenv("PATH")) && *path)
 {
  char *startp = ((void*)0),
       *endp = ((void*)0);

  do
  {
   if (!startp)
    startp = path;
   else
    startp = endp + 1;

   endp = first_path_var_separator(startp);
   if (!endp)
    endp = startp + strlen(startp);

   StrNCpy(test_path, startp, Min(endp - startp + 1, MAXPGPATH));

   if (is_absolute_path(test_path))
    join_path_components(retpath, test_path, argv0);
   else
   {
    join_path_components(retpath, cwd, test_path);
    join_path_components(retpath, retpath, argv0);
   }
   canonicalize_path(retpath);

   switch (validate_exec(retpath))
   {
    case 0:
     return resolve_symlinks(retpath);
    case -1:
     break;
    case -2:
     log_error(errcode(ERRCODE_WRONG_OBJECT_TYPE),
         _("could not read binary \"%s\""),
         retpath);
     break;
   }
  } while (*endp);
 }

 log_error(errcode(ERRCODE_UNDEFINED_FILE),
     _("could not find a \"%s\" to execute"), argv0);
 return -1;
}
