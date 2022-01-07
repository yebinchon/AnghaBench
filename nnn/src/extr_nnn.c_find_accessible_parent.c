
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NAME_MAX ;
 scalar_t__ PATH_MAX ;
 char* dirname (char*) ;
 scalar_t__ istopdir (char*) ;
 int printmsg (char*) ;
 char* visit_parent (char*,char*,int*) ;
 char* xbasename (char*) ;
 int xdelay () ;
 int xstrlcpy (char*,char*,scalar_t__) ;

__attribute__((used)) static void find_accessible_parent(char *path, char *newpath, char *lastname, int *presel)
{
 char *dir;


 xstrlcpy(lastname, xbasename(path), NAME_MAX + 1);

 xstrlcpy(newpath, path, PATH_MAX);
 while (1) {
  dir = visit_parent(path, newpath, presel);
  if (istopdir(path) || istopdir(newpath)) {
   if (!dir)
    dir = dirname(newpath);
   break;
  }
  if (!dir) {
   xstrlcpy(path, newpath, PATH_MAX);
   continue;
  }
  break;
 }

 xstrlcpy(path, dir, PATH_MAX);

 printmsg("cannot access dir");
 xdelay();
}
