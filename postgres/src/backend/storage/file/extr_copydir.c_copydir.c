
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tofile ;
struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;
typedef int fromfile ;
typedef int DIR ;


 int * AllocateDir (char*) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERROR ;
 int FreeDir (int *) ;
 int MAXPGPATH ;
 scalar_t__ MakePGDirectory (char*) ;
 struct dirent* ReadDir (int *,char*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int copy_file (char*,char*) ;
 int enableFsync ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 int fsync_fname (char*,int) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

void
copydir(char *fromdir, char *todir, bool recurse)
{
 DIR *xldir;
 struct dirent *xlde;
 char fromfile[MAXPGPATH * 2];
 char tofile[MAXPGPATH * 2];

 if (MakePGDirectory(todir) != 0)
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not create directory \"%s\": %m", todir)));

 xldir = AllocateDir(fromdir);

 while ((xlde = ReadDir(xldir, fromdir)) != ((void*)0))
 {
  struct stat fst;


  CHECK_FOR_INTERRUPTS();

  if (strcmp(xlde->d_name, ".") == 0 ||
   strcmp(xlde->d_name, "..") == 0)
   continue;

  snprintf(fromfile, sizeof(fromfile), "%s/%s", fromdir, xlde->d_name);
  snprintf(tofile, sizeof(tofile), "%s/%s", todir, xlde->d_name);

  if (lstat(fromfile, &fst) < 0)
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not stat file \"%s\": %m", fromfile)));

  if (S_ISDIR(fst.st_mode))
  {

   if (recurse)
    copydir(fromfile, tofile, 1);
  }
  else if (S_ISREG(fst.st_mode))
   copy_file(fromfile, tofile);
 }
 FreeDir(xldir);





 if (!enableFsync)
  return;

 xldir = AllocateDir(todir);

 while ((xlde = ReadDir(xldir, todir)) != ((void*)0))
 {
  struct stat fst;

  if (strcmp(xlde->d_name, ".") == 0 ||
   strcmp(xlde->d_name, "..") == 0)
   continue;

  snprintf(tofile, sizeof(tofile), "%s/%s", todir, xlde->d_name);





  if (lstat(tofile, &fst) < 0)
   ereport(ERROR,
     (errcode_for_file_access(),
      errmsg("could not stat file \"%s\": %m", tofile)));

  if (S_ISREG(fst.st_mode))
   fsync_fname(tofile, 0);
 }
 FreeDir(xldir);







 fsync_fname(todir, 1);
}
