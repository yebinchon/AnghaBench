
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int * AllocateDir (char const*) ;
 int ERROR ;
 int FATAL ;
 int FreeDir (int *) ;
 int PG_BACKEND_VERSIONSTR ;
 int elog (int ,char*,char const*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errhint (char*,int ) ;
 int errmsg (char*,char const*) ;
 scalar_t__ find_my_exec (char const*,int ) ;
 scalar_t__ find_other_exec (char const*,char*,int ,int ) ;
 int get_pkglib_path (int ,char const*) ;
 int my_exec_path ;
 char const* pkglib_path ;
 int postgres_exec_path ;

__attribute__((used)) static void
getInstallationPaths(const char *argv0)
{
 DIR *pdir;


 if (find_my_exec(argv0, my_exec_path) < 0)
  elog(FATAL, "%s: could not locate my own executable path", argv0);
 get_pkglib_path(my_exec_path, pkglib_path);
 pdir = AllocateDir(pkglib_path);
 if (pdir == ((void*)0))
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not open directory \"%s\": %m",
      pkglib_path),
     errhint("This may indicate an incomplete PostgreSQL installation, or that the file \"%s\" has been moved away from its proper location.",
       my_exec_path)));
 FreeDir(pdir);





}
