
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int dbspace_path ;
typedef int DIR ;


 int * AllocateDir (char const*) ;
 scalar_t__ ENOENT ;
 int FreeDir (int *) ;
 int LOG ;
 int MAXPGPATH ;
 struct dirent* ReadDir (int *,char const*) ;
 int ResetUnloggedRelationsInDbspaceDir (char*,int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 scalar_t__ errno ;
 int snprintf (char*,int,char*,char const*,char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strspn (char*,char*) ;

__attribute__((used)) static void
ResetUnloggedRelationsInTablespaceDir(const char *tsdirname, int op)
{
 DIR *ts_dir;
 struct dirent *de;
 char dbspace_path[MAXPGPATH * 2];

 ts_dir = AllocateDir(tsdirname);
 if (ts_dir == ((void*)0) && errno == ENOENT)
 {
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not open directory \"%s\": %m",
      tsdirname)));
  return;
 }

 while ((de = ReadDir(ts_dir, tsdirname)) != ((void*)0))
 {





  if (strspn(de->d_name, "0123456789") != strlen(de->d_name))
   continue;

  snprintf(dbspace_path, sizeof(dbspace_path), "%s/%s",
     tsdirname, de->d_name);
  ResetUnloggedRelationsInDbspaceDir(dbspace_path, op);
 }

 FreeDir(ts_dir);
}
