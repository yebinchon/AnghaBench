
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sharedinitfname ;
typedef int localinitfname ;


 char* DatabasePath ;
 int ERROR ;
 int LWLockAcquire (int ,int ) ;
 int LW_EXCLUSIVE ;
 int MAXPGPATH ;
 char* RELCACHE_INIT_FILENAME ;
 int RelCacheInitLock ;
 int snprintf (char*,int,char*,char*,...) ;
 int unlink_initfile (char*,int ) ;

void
RelationCacheInitFilePreInvalidate(void)
{
 char localinitfname[MAXPGPATH];
 char sharedinitfname[MAXPGPATH];

 if (DatabasePath)
  snprintf(localinitfname, sizeof(localinitfname), "%s/%s",
     DatabasePath, RELCACHE_INIT_FILENAME);
 snprintf(sharedinitfname, sizeof(sharedinitfname), "global/%s",
    RELCACHE_INIT_FILENAME);

 LWLockAcquire(RelCacheInitLock, LW_EXCLUSIVE);







 if (DatabasePath)
  unlink_initfile(localinitfname, ERROR);
 unlink_initfile(sharedinitfname, ERROR);
}
