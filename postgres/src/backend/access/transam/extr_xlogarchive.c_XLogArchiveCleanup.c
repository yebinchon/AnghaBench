
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPGPATH ;
 int StatusFilePath (char*,char const*,char*) ;
 int unlink (char*) ;

void
XLogArchiveCleanup(const char *xlog)
{
 char archiveStatusPath[MAXPGPATH];


 StatusFilePath(archiveStatusPath, xlog, ".done");
 unlink(archiveStatusPath);



 StatusFilePath(archiveStatusPath, xlog, ".ready");
 unlink(archiveStatusPath);

}
