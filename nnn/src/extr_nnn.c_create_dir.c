
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 int FALSE ;
 int TRUE ;
 scalar_t__ errno ;
 int mkdir (char const*,int) ;
 int xdiraccess (char const*) ;

__attribute__((used)) static bool create_dir(const char *path)
{
 if (!xdiraccess(path)) {
  if (errno != ENOENT)
   return FALSE;

  if (mkdir(path, 0755) == -1)
   return FALSE;
 }

 return TRUE;
}
