
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
struct dirent {char* d_name; } ;
typedef int int64 ;
typedef int filename ;
typedef int DIR ;


 int * AllocateDir (char const*) ;
 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ ENOENT ;
 int ERROR ;
 int FreeDir (int *) ;
 int MAXPGPATH ;
 struct dirent* ReadDir (int *,char const*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char*) ;
 scalar_t__ errno ;
 int snprintf (char*,int,char*,char const*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int64
db_dir_size(const char *path)
{
 int64 dirsize = 0;
 struct dirent *direntry;
 DIR *dirdesc;
 char filename[MAXPGPATH * 2];

 dirdesc = AllocateDir(path);

 if (!dirdesc)
  return 0;

 while ((direntry = ReadDir(dirdesc, path)) != ((void*)0))
 {
  struct stat fst;

  CHECK_FOR_INTERRUPTS();

  if (strcmp(direntry->d_name, ".") == 0 ||
   strcmp(direntry->d_name, "..") == 0)
   continue;

  snprintf(filename, sizeof(filename), "%s/%s", path, direntry->d_name);

  if (stat(filename, &fst) < 0)
  {
   if (errno == ENOENT)
    continue;
   else
    ereport(ERROR,
      (errcode_for_file_access(),
       errmsg("could not stat file \"%s\": %m", filename)));
  }
  dirsize += fst.st_size;
 }

 FreeDir(dirdesc);
 return dirsize;
}
