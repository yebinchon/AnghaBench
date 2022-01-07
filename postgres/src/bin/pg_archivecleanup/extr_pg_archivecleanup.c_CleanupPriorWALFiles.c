
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int WALFilePath ;
typedef int DIR ;


 scalar_t__ IsPartialXLogFileName (char*) ;
 scalar_t__ IsXLogFileName (char*) ;
 int MAXPGPATH ;
 int TrimExtension (char*,int ) ;
 int additional_ext ;
 char* archiveLocation ;
 scalar_t__ closedir (int *) ;
 scalar_t__ dryrun ;
 int errno ;
 scalar_t__ exclusiveCleanupFileName ;
 int * opendir (char*) ;
 int pg_log_debug (char*,char*) ;
 int pg_log_error (char*,char*) ;
 int printf (char*,char*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ strcmp (char*,scalar_t__) ;
 int strlcpy (char*,char*,int) ;
 int unlink (char*) ;

__attribute__((used)) static void
CleanupPriorWALFiles(void)
{
 int rc;
 DIR *xldir;
 struct dirent *xlde;
 char walfile[MAXPGPATH];

 if ((xldir = opendir(archiveLocation)) != ((void*)0))
 {
  while (errno = 0, (xlde = readdir(xldir)) != ((void*)0))
  {





   strlcpy(walfile, xlde->d_name, MAXPGPATH);
   TrimExtension(walfile, additional_ext);
   if ((IsXLogFileName(walfile) || IsPartialXLogFileName(walfile)) &&
    strcmp(walfile + 8, exclusiveCleanupFileName + 8) < 0)
   {
    char WALFilePath[MAXPGPATH * 2];







    snprintf(WALFilePath, sizeof(WALFilePath), "%s/%s",
       archiveLocation, xlde->d_name);

    if (dryrun)
    {





     printf("%s\n", WALFilePath);
     pg_log_debug("file \"%s\" would be removed", WALFilePath);
     continue;
    }

    pg_log_debug("removing file \"%s\"", WALFilePath);

    rc = unlink(WALFilePath);
    if (rc != 0)
    {
     pg_log_error("could not remove file \"%s\": %m",
         WALFilePath);
     break;
    }
   }
  }

  if (errno)
   pg_log_error("could not read archive location \"%s\": %m",
       archiveLocation);
  if (closedir(xldir))
   pg_log_error("could not close archive location \"%s\": %m",
       archiveLocation);
 }
 else
  pg_log_error("could not open archive location \"%s\": %m",
      archiveLocation);
}
