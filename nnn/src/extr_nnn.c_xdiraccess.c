
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int FALSE ;
 int TRUE ;
 int closedir (int *) ;
 int * opendir (char const*) ;
 int printwarn (int *) ;

__attribute__((used)) static bool xdiraccess(const char *path)
{
 DIR *dirp = opendir(path);

 if (!dirp) {
  printwarn(((void*)0));
  return FALSE;
 }

 closedir(dirp);
 return TRUE;
}
