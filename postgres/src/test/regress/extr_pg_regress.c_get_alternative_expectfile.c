
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int snprintf (char*,int,char*,char*,int,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static char *
get_alternative_expectfile(const char *expectfile, int i)
{
 char *last_dot;
 int ssize = strlen(expectfile) + 2 + 1;
 char *tmp;
 char *s;

 if (!(tmp = (char *) malloc(ssize)))
  return ((void*)0);

 if (!(s = (char *) malloc(ssize)))
 {
  free(tmp);
  return ((void*)0);
 }

 strcpy(tmp, expectfile);
 last_dot = strrchr(tmp, '.');
 if (!last_dot)
 {
  free(tmp);
  free(s);
  return ((void*)0);
 }
 *last_dot = '\0';
 snprintf(s, ssize, "%s_%d.%s", tmp, i, last_dot + 1);
 free(tmp);
 return s;
}
