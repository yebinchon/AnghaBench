
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int subpath ;
struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;
typedef int DIR ;


 int MAXPGPATH ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int closedir (int *) ;
 int errno ;
 int lstat (char*,struct stat*) ;
 int * opendir (char const*) ;
 int pg_log_error (char*,char const*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int stat (char*,struct stat*) ;
 scalar_t__ strcmp (char*,char*) ;
 int stub1 (char const*,int) ;
 int stub2 (char const*,int) ;

__attribute__((used)) static void
walkdir(const char *path,
  int (*action) (const char *fname, bool isdir),
  bool process_symlinks)
{
 DIR *dir;
 struct dirent *de;

 dir = opendir(path);
 if (dir == ((void*)0))
 {
  pg_log_error("could not open directory \"%s\": %m", path);
  return;
 }

 while (errno = 0, (de = readdir(dir)) != ((void*)0))
 {
  char subpath[MAXPGPATH * 2];
  struct stat fst;
  int sret;

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
   pg_log_error("could not stat file \"%s\": %m", subpath);
   continue;
  }

  if (S_ISREG(fst.st_mode))
   (*action) (subpath, 0);
  else if (S_ISDIR(fst.st_mode))
   walkdir(subpath, action, 0);
 }

 if (errno)
  pg_log_error("could not read directory \"%s\": %m", path);

 (void) closedir(dir);







 (*action) (path, 1);
}
