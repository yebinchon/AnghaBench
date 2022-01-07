
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ ENOENT ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 scalar_t__ errno ;
 scalar_t__ lstat (char const*,struct stat*) ;
 scalar_t__ rmdir (char const*) ;
 scalar_t__ unlink (char const*) ;

void
remove_tablespace_symlink(const char *linkloc)
{
 struct stat st;

 if (lstat(linkloc, &st) < 0)
 {
  if (errno == ENOENT)
   return;
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not stat file \"%s\": %m", linkloc)));
 }

 if (S_ISDIR(st.st_mode))
 {




  if (rmdir(linkloc) < 0 && errno != ENOENT)
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not remove directory \"%s\": %m",
       linkloc)));
 }
 else
 {

  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("\"%s\" is not a directory or symbolic link",
      linkloc)));
 }
}
