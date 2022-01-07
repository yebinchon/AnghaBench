
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int pathbuf ;
typedef int int64 ;


 scalar_t__ ENOENT ;
 int ERROR ;
 int MAXPGPATH ;
 int NIL ;
 char* TABLESPACE_VERSION_DIRECTORY ;
 int _tarWriteHeader (char*,int *,struct stat*,int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 scalar_t__ errno ;
 scalar_t__ lstat (char*,struct stat*) ;
 scalar_t__ sendDir (char*,int ,int,int ,int) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strlen (char*) ;

int64
sendTablespace(char *path, bool sizeonly)
{
 int64 size;
 char pathbuf[MAXPGPATH];
 struct stat statbuf;





 snprintf(pathbuf, sizeof(pathbuf), "%s/%s", path,
    TABLESPACE_VERSION_DIRECTORY);





 if (lstat(pathbuf, &statbuf) != 0)
 {
  if (errno != ENOENT)
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not stat file or directory \"%s\": %m",
       pathbuf)));


  return 0;
 }

 size = _tarWriteHeader(TABLESPACE_VERSION_DIRECTORY, ((void*)0), &statbuf,
         sizeonly);


 size += sendDir(pathbuf, strlen(path), sizeonly, NIL, 1);

 return size;
}
