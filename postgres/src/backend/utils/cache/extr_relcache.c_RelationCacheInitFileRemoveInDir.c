
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int initfilename ;
typedef int DIR ;


 int * AllocateDir (char const*) ;
 int FreeDir (int *) ;
 int LOG ;
 int MAXPGPATH ;
 char* RELCACHE_INIT_FILENAME ;
 struct dirent* ReadDirExtended (int *,char const*,int ) ;
 int snprintf (char*,int,char*,char const*,char*,char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strspn (char*,char*) ;
 int unlink_initfile (char*,int ) ;

__attribute__((used)) static void
RelationCacheInitFileRemoveInDir(const char *tblspcpath)
{
 DIR *dir;
 struct dirent *de;
 char initfilename[MAXPGPATH * 2];


 dir = AllocateDir(tblspcpath);

 while ((de = ReadDirExtended(dir, tblspcpath, LOG)) != ((void*)0))
 {
  if (strspn(de->d_name, "0123456789") == strlen(de->d_name))
  {

   snprintf(initfilename, sizeof(initfilename), "%s/%s/%s",
      tblspcpath, de->d_name, RELCACHE_INIT_FILENAME);
   unlink_initfile(initfilename, LOG);
  }
 }

 FreeDir(dir);
}
