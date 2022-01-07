
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int subpath ;
struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;
typedef int DIR ;


 int * AllocateDir (char const*) ;
 int CHECK_FOR_INTERRUPTS () ;
 int FreeDir (int *) ;
 int MAXPGPATH ;
 struct dirent* ReadDirExtended (int *,char const*,int) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int ereport (int,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 int lstat (char*,struct stat*) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int stat (char*,struct stat*) ;
 scalar_t__ strcmp (char*,char*) ;
 void stub1 (char const*,int,int) ;
 void stub2 (char const*,int,int) ;

__attribute__((used)) static void
walkdir(const char *path,
  void (*action) (const char *fname, bool isdir, int elevel),
  bool process_symlinks,
  int elevel)
{
 DIR *dir;
 struct dirent *de;

 dir = AllocateDir(path);

 while ((de = ReadDirExtended(dir, path, elevel)) != ((void*)0))
 {
  char subpath[MAXPGPATH * 2];
  struct stat fst;
  int sret;

  CHECK_FOR_INTERRUPTS();

  if (strcmp(de->d_name, ".") == 0 ||
   strcmp(de->d_name, "..") == 0)
   continue;

  snprintf(subpath, sizeof(subpath), "%s/%s", path, de->d_name);

  if (process_symlinks)
   sret = stat(subpath, &fst);
  else
   sret = lstat(subpath, &fst);

  if (sret < 0)
  {
   ereport(elevel,
     (errcode_for_file_access(),
      errmsg("could not stat file \"%s\": %m", subpath)));
   continue;
  }

  if (S_ISREG(fst.st_mode))
   (*action) (subpath, 0, elevel);
  else if (S_ISDIR(fst.st_mode))
   walkdir(subpath, action, 0, elevel);
 }

 FreeDir(dir);







 if (dir)
  (*action) (path, 1, elevel);
}
