
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ filtermode; } ;


 int FILTER ;
 int PATH_MAX ;
 int R_OK ;
 int access (char*,int ) ;
 TYPE_1__ cfg ;
 char* dirname (char*) ;
 scalar_t__ istopdir (char*) ;
 int printwarn (int*) ;
 int xstrlcpy (char*,char*,int ) ;

__attribute__((used)) static char *visit_parent(char *path, char *newpath, int *presel)
{
 char *dir;


 if (istopdir(path)) {

  if (cfg.filtermode)
   *presel = FILTER;
  return ((void*)0);
 }


 xstrlcpy(newpath, path, PATH_MAX);

 dir = dirname(newpath);
 if (access(dir, R_OK) == -1) {
  printwarn(presel);
  return ((void*)0);
 }

 return dir;
}
