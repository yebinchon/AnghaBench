
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ ENOENT ;
 int MAXPGPATH ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ errno ;
 scalar_t__ lstat (char*,struct stat*) ;
 int pg_log_warning (char*,char const*) ;
 char** pgfnames (char const*) ;
 int pgfnames_cleanup (char**) ;
 scalar_t__ rmdir (char const*) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 scalar_t__ unlink (char*) ;

bool
rmtree(const char *path, bool rmtopdir)
{
 bool result = 1;
 char pathbuf[MAXPGPATH];
 char **filenames;
 char **filename;
 struct stat statbuf;





 filenames = pgfnames(path);

 if (filenames == ((void*)0))
  return 0;


 for (filename = filenames; *filename; filename++)
 {
  snprintf(pathbuf, MAXPGPATH, "%s/%s", path, *filename);
  if (lstat(pathbuf, &statbuf) != 0)
  {
   if (errno != ENOENT)
   {
    pg_log_warning("could not stat file or directory \"%s\": %m",
          pathbuf);
    result = 0;
   }
   continue;
  }

  if (S_ISDIR(statbuf.st_mode))
  {

   if (!rmtree(pathbuf, 1))
   {

    result = 0;
   }
  }
  else
  {
   if (unlink(pathbuf) != 0)
   {
    if (errno != ENOENT)
    {
     pg_log_warning("could not remove file or directory \"%s\": %m",
           pathbuf);
     result = 0;
    }
   }
  }
 }

 if (rmtopdir)
 {
  if (rmdir(path) != 0)
  {
   pg_log_warning("could not remove file or directory \"%s\": %m",
         path);
   result = 0;
  }
 }

 pgfnames_cleanup(filenames);

 return result;
}
