
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int dummy; } ;
typedef int DIR ;


 int ereport (int,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 scalar_t__ errno ;
 struct dirent* readdir (int *) ;

struct dirent *
ReadDirExtended(DIR *dir, const char *dirname, int elevel)
{
 struct dirent *dent;


 if (dir == ((void*)0))
 {
  ereport(elevel,
    (errcode_for_file_access(),
     errmsg("could not open directory \"%s\": %m",
      dirname)));
  return ((void*)0);
 }

 errno = 0;
 if ((dent = readdir(dir)) != ((void*)0))
  return dent;

 if (errno)
  ereport(elevel,
    (errcode_for_file_access(),
     errmsg("could not read directory \"%s\": %m",
      dirname)));
 return ((void*)0);
}
