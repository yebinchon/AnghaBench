
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** environ ;
 int free (char*) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 int unsetenv (char*) ;

void clearenv()
{
 char **envp;
 char *s;



 while (*(envp = environ)) {
  char *eq = strchr(*envp, '=');

  s = strdup(*envp);

  if (eq) s[eq - *envp] = '\0';

  unsetenv(s);
  free(s);
 }

}
