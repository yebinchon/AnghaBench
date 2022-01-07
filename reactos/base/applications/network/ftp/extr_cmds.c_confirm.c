
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFSIZ ;
 int fflush (int ) ;
 int gets (char*) ;
 int interactive ;
 int printf (char*,char const*,char const*) ;
 int stdout ;

int confirm(const char *cmd, const char *file)
{
 char line[BUFSIZ];

 if (!interactive)
  return (1);
 printf("%s %s? ", cmd, file);
 (void) fflush(stdout);
 (void) gets(line);
 return (*line != 'n' && *line != 'N');
}
