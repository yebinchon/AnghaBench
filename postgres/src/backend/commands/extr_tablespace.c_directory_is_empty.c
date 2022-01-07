
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef int DIR ;


 int * AllocateDir (char const*) ;
 int FreeDir (int *) ;
 struct dirent* ReadDir (int *,char const*) ;
 scalar_t__ strcmp (int ,char*) ;

bool
directory_is_empty(const char *path)
{
 DIR *dirdesc;
 struct dirent *de;

 dirdesc = AllocateDir(path);

 while ((de = ReadDir(dirdesc, path)) != ((void*)0))
 {
  if (strcmp(de->d_name, ".") == 0 ||
   strcmp(de->d_name, "..") == 0)
   continue;
  FreeDir(dirdesc);
  return 0;
 }

 FreeDir(dirdesc);
 return 1;
}
