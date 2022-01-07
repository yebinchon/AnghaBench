
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPGPATH ;
 int canonicalize_path (char*) ;
 int getcwd (char*,int) ;
 char* getenv (char const*) ;
 int pg_fatal (char*,...) ;
 char* pg_strdup (char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
check_required_directory(char **dirpath, const char *envVarName, bool useCwd,
       const char *cmdLineOption, const char *description,
       bool missingOk)
{
 if (*dirpath == ((void*)0) || strlen(*dirpath) == 0)
 {
  const char *envVar;

  if ((envVar = getenv(envVarName)) && strlen(envVar))
   *dirpath = pg_strdup(envVar);
  else if (useCwd)
  {
   char cwd[MAXPGPATH];

   if (!getcwd(cwd, MAXPGPATH))
    pg_fatal("could not determine current directory\n");
   *dirpath = pg_strdup(cwd);
  }
  else if (missingOk)
   return;
  else
   pg_fatal("You must identify the directory where the %s.\n"
      "Please use the %s command-line option or the %s environment variable.\n",
      description, cmdLineOption, envVarName);
 }





 canonicalize_path(*dirpath);
}
