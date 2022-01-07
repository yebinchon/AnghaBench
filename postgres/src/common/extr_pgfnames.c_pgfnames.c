
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef int DIR ;


 scalar_t__ closedir (int *) ;
 int errno ;
 int * opendir (char const*) ;
 scalar_t__ palloc (int) ;
 int pg_log_warning (char*,char const*) ;
 char* pstrdup (int ) ;
 struct dirent* readdir (int *) ;
 scalar_t__ repalloc (char**,int) ;
 scalar_t__ strcmp (int ,char*) ;

char **
pgfnames(const char *path)
{
 DIR *dir;
 struct dirent *file;
 char **filenames;
 int numnames = 0;
 int fnsize = 200;

 dir = opendir(path);
 if (dir == ((void*)0))
 {
  pg_log_warning("could not open directory \"%s\": %m", path);
  return ((void*)0);
 }

 filenames = (char **) palloc(fnsize * sizeof(char *));

 while (errno = 0, (file = readdir(dir)) != ((void*)0))
 {
  if (strcmp(file->d_name, ".") != 0 && strcmp(file->d_name, "..") != 0)
  {
   if (numnames + 1 >= fnsize)
   {
    fnsize *= 2;
    filenames = (char **) repalloc(filenames,
              fnsize * sizeof(char *));
   }
   filenames[numnames++] = pstrdup(file->d_name);
  }
 }

 if (errno)
  pg_log_warning("could not read directory \"%s\": %m", path);

 filenames[numnames] = ((void*)0);

 if (closedir(dir))
  pg_log_warning("could not close directory \"%s\": %m", path);

 return filenames;
}
