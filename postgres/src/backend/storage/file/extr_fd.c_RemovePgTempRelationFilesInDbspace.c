
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int rm_path ;
typedef int DIR ;


 int * AllocateDir (char const*) ;
 int FreeDir (int *) ;
 int LOG ;
 int MAXPGPATH ;
 struct dirent* ReadDirExtended (int *,char const*,int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 int looks_like_temp_rel_name (char*) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 scalar_t__ unlink (char*) ;

__attribute__((used)) static void
RemovePgTempRelationFilesInDbspace(const char *dbspacedirname)
{
 DIR *dbspace_dir;
 struct dirent *de;
 char rm_path[MAXPGPATH * 2];

 dbspace_dir = AllocateDir(dbspacedirname);

 while ((de = ReadDirExtended(dbspace_dir, dbspacedirname, LOG)) != ((void*)0))
 {
  if (!looks_like_temp_rel_name(de->d_name))
   continue;

  snprintf(rm_path, sizeof(rm_path), "%s/%s",
     dbspacedirname, de->d_name);

  if (unlink(rm_path) < 0)
   ereport(LOG,
     (errcode_for_file_access(),
      errmsg("could not remove file \"%s\": %m",
       rm_path)));
 }

 FreeDir(dbspace_dir);
}
