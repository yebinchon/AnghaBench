
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILEHANDLE ;


 int STDERR ;
 int STDOUT ;
 int __stderr_name ;
 int __stdout_name ;
 scalar_t__ strcmp (char const*,int ) ;

FILEHANDLE _sys_open(const char * sName, int OpenMode) {

  if (strcmp(sName, __stdout_name) == 0) {
    return (STDOUT);
  } else if (strcmp(sName, __stderr_name) == 0) {
    return (STDERR);
  } else
  return (0);
}
