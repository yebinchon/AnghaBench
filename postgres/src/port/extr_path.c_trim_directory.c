
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_DIR_SEP (char) ;
 char* skip_drive (char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
trim_directory(char *path)
{
 char *p;

 path = skip_drive(path);

 if (path[0] == '\0')
  return;


 for (p = path + strlen(path) - 1; IS_DIR_SEP(*p) && p > path; p--)
  ;

 for (; !IS_DIR_SEP(*p) && p > path; p--)
  ;

 for (; p > path && IS_DIR_SEP(*(p - 1)); p--)
  ;

 if (p == path && IS_DIR_SEP(*p))
  p++;
 *p = '\0';
}
