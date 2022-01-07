
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int dbspace_path ;
typedef int DIR ;


 int * AllocateDir (char const*) ;
 int FreeDir (int *) ;
 int LOG ;
 int MAXPGPATH ;
 struct dirent* ReadDirExtended (int *,char const*,int ) ;
 int RemovePgTempRelationFilesInDbspace (char*) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strspn (char*,char*) ;

__attribute__((used)) static void
RemovePgTempRelationFiles(const char *tsdirname)
{
 DIR *ts_dir;
 struct dirent *de;
 char dbspace_path[MAXPGPATH * 2];

 ts_dir = AllocateDir(tsdirname);

 while ((de = ReadDirExtended(ts_dir, tsdirname, LOG)) != ((void*)0))
 {





  if (strspn(de->d_name, "0123456789") != strlen(de->d_name))
   continue;

  snprintf(dbspace_path, sizeof(dbspace_path), "%s/%s",
     tsdirname, de->d_name);
  RemovePgTempRelationFilesInDbspace(dbspace_path);
 }

 FreeDir(ts_dir);
}
