
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int FILE ;


 int * AllocateFile (char*,char*) ;
 scalar_t__ FreeFile (int *) ;
 int LOG ;
 int MAXPGPATH ;
 int StatusFilePath (char*,char const*,char*) ;
 int WARNING ;
 int durable_rename (char*,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;

void
XLogArchiveForceDone(const char *xlog)
{
 char archiveReady[MAXPGPATH];
 char archiveDone[MAXPGPATH];
 struct stat stat_buf;
 FILE *fd;


 StatusFilePath(archiveDone, xlog, ".done");
 if (stat(archiveDone, &stat_buf) == 0)
  return;


 StatusFilePath(archiveReady, xlog, ".ready");
 if (stat(archiveReady, &stat_buf) == 0)
 {
  (void) durable_rename(archiveReady, archiveDone, WARNING);
  return;
 }


 fd = AllocateFile(archiveDone, "w");
 if (fd == ((void*)0))
 {
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not create archive status file \"%s\": %m",
      archiveDone)));
  return;
 }
 if (FreeFile(fd))
 {
  ereport(LOG,
    (errcode_for_file_access(),
     errmsg("could not write archive status file \"%s\": %m",
      archiveDone)));
  return;
 }
}
