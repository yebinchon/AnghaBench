
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {int d_name; } ;
typedef char* Oid ;
typedef int DIR ;


 int * AllocateDir (char*) ;
 int ENOENT ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int FreeDir (int *) ;
 int LOG ;
 struct dirent* ReadDir (int *,char*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int TABLESPACE_VERSION_DIRECTORY ;
 int WARNING ;
 int directory_is_empty (char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 int errno ;
 int get_parent_directory (char*) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int pfree (char*) ;
 char* psprintf (char*,char*,int ) ;
 char* pstrdup (char*) ;
 scalar_t__ rmdir (char*) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ unlink (char*) ;

__attribute__((used)) static bool
destroy_tablespace_directories(Oid tablespaceoid, bool redo)
{
 char *linkloc;
 char *linkloc_with_version_dir;
 DIR *dirdesc;
 struct dirent *de;
 char *subfile;
 struct stat st;

 linkloc_with_version_dir = psprintf("pg_tblspc/%u/%s", tablespaceoid,
          TABLESPACE_VERSION_DIRECTORY);
 dirdesc = AllocateDir(linkloc_with_version_dir);
 if (dirdesc == ((void*)0))
 {
  if (errno == ENOENT)
  {
   if (!redo)
    ereport(WARNING,
      (errcode_for_file_access(),
       errmsg("could not open directory \"%s\": %m",
        linkloc_with_version_dir)));

   goto remove_symlink;
  }
  else if (redo)
  {

   ereport(LOG,
     (errcode_for_file_access(),
      errmsg("could not open directory \"%s\": %m",
       linkloc_with_version_dir)));
   pfree(linkloc_with_version_dir);
   return 0;
  }

 }

 while ((de = ReadDir(dirdesc, linkloc_with_version_dir)) != ((void*)0))
 {
  if (strcmp(de->d_name, ".") == 0 ||
   strcmp(de->d_name, "..") == 0)
   continue;

  subfile = psprintf("%s/%s", linkloc_with_version_dir, de->d_name);


  if (!redo && !directory_is_empty(subfile))
  {
   FreeDir(dirdesc);
   pfree(subfile);
   pfree(linkloc_with_version_dir);
   return 0;
  }


  if (rmdir(subfile) < 0)
   ereport(redo ? LOG : ERROR,
     (errcode_for_file_access(),
      errmsg("could not remove directory \"%s\": %m",
       subfile)));

  pfree(subfile);
 }

 FreeDir(dirdesc);


 if (rmdir(linkloc_with_version_dir) < 0)
 {
  ereport(redo ? LOG : ERROR,
    (errcode_for_file_access(),
     errmsg("could not remove directory \"%s\": %m",
      linkloc_with_version_dir)));
  pfree(linkloc_with_version_dir);
  return 0;
 }
remove_symlink:
 linkloc = pstrdup(linkloc_with_version_dir);
 get_parent_directory(linkloc);
 if (lstat(linkloc, &st) < 0)
 {
  int saved_errno = errno;

  ereport(redo ? LOG : (saved_errno == ENOENT ? WARNING : ERROR),
    (errcode_for_file_access(),
     errmsg("could not stat file \"%s\": %m",
      linkloc)));
 }
 else if (S_ISDIR(st.st_mode))
 {
  if (rmdir(linkloc) < 0)
  {
   int saved_errno = errno;

   ereport(redo ? LOG : (saved_errno == ENOENT ? WARNING : ERROR),
     (errcode_for_file_access(),
      errmsg("could not remove directory \"%s\": %m",
       linkloc)));
  }
 }
 else
 {

  ereport(redo ? LOG : ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("\"%s\" is not a directory or symbolic link",
      linkloc)));
 }

 pfree(linkloc_with_version_dir);
 pfree(linkloc);

 return 1;
}
