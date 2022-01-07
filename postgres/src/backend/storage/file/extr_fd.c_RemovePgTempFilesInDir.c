
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;
typedef int rm_path ;
typedef int DIR ;


 int * AllocateDir (char const*) ;
 scalar_t__ ENOENT ;
 int FreeDir (int *) ;
 int LOG ;
 int MAXPGPATH ;
 int PG_TEMP_FILE_PREFIX ;
 struct dirent* ReadDirExtended (int *,char const*,int ) ;
 scalar_t__ S_ISDIR (int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 scalar_t__ errno ;
 scalar_t__ lstat (char*,struct stat*) ;
 scalar_t__ rmdir (char*) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int ) ;
 scalar_t__ unlink (char*) ;

void
RemovePgTempFilesInDir(const char *tmpdirname, bool missing_ok, bool unlink_all)
{
 DIR *temp_dir;
 struct dirent *temp_de;
 char rm_path[MAXPGPATH * 2];

 temp_dir = AllocateDir(tmpdirname);

 if (temp_dir == ((void*)0) && errno == ENOENT && missing_ok)
  return;

 while ((temp_de = ReadDirExtended(temp_dir, tmpdirname, LOG)) != ((void*)0))
 {
  if (strcmp(temp_de->d_name, ".") == 0 ||
   strcmp(temp_de->d_name, "..") == 0)
   continue;

  snprintf(rm_path, sizeof(rm_path), "%s/%s",
     tmpdirname, temp_de->d_name);

  if (unlink_all ||
   strncmp(temp_de->d_name,
     PG_TEMP_FILE_PREFIX,
     strlen(PG_TEMP_FILE_PREFIX)) == 0)
  {
   struct stat statbuf;

   if (lstat(rm_path, &statbuf) < 0)
   {
    ereport(LOG,
      (errcode_for_file_access(),
       errmsg("could not stat file \"%s\": %m", rm_path)));
    continue;
   }

   if (S_ISDIR(statbuf.st_mode))
   {

    RemovePgTempFilesInDir(rm_path, 0, 1);

    if (rmdir(rm_path) < 0)
     ereport(LOG,
       (errcode_for_file_access(),
        errmsg("could not remove directory \"%s\": %m",
         rm_path)));
   }
   else
   {
    if (unlink(rm_path) < 0)
     ereport(LOG,
       (errcode_for_file_access(),
        errmsg("could not remove file \"%s\": %m",
         rm_path)));
   }
  }
  else
   ereport(LOG,
     (errmsg("unexpected file found in temporary-files directory: \"%s\"",
       rm_path)));
 }

 FreeDir(temp_dir);
}
