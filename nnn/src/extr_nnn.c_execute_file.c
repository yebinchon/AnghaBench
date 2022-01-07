
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int name; } ;


 int FALSE ;
 int F_NORMAL ;
 int S_ISREG (int) ;
 int TRUE ;
 TYPE_1__* dents ;
 int mkpath (char*,int ,char*) ;
 int ndents ;
 int printwait (char*,int*) ;
 int spawn (char*,int *,int *,char*,int ) ;

__attribute__((used)) static bool execute_file(int cur, char *path, char *newpath, int *presel)
{
 if (!ndents)
  return FALSE;


 if (!S_ISREG(dents[cur].mode)) {
  printwait("not regular file", presel);
  return FALSE;
 }


 if (!(dents[cur].mode & 0100)) {
  printwait("permission denied", presel);
  return FALSE;
 }

 mkpath(path, dents[cur].name, newpath);
 spawn(newpath, ((void*)0), ((void*)0), path, F_NORMAL);

 return TRUE;
}
