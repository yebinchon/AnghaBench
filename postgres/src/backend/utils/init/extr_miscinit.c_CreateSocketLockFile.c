
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lockfile ;


 int CreateLockFile (char*,int,char const*,int,char const*) ;
 int MAXPGPATH ;
 int snprintf (char*,int,char*,char const*) ;

void
CreateSocketLockFile(const char *socketfile, bool amPostmaster,
      const char *socketDir)
{
 char lockfile[MAXPGPATH];

 snprintf(lockfile, sizeof(lockfile), "%s.lock", socketfile);
 CreateLockFile(lockfile, amPostmaster, socketDir, 0, socketfile);
}
