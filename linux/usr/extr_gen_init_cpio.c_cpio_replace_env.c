
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 char* getenv (char*) ;
 int snprintf (char*,int,char*,char*,char*,char*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static char *cpio_replace_env(char *new_location)
{
 char expanded[PATH_MAX + 1];
 char *start, *end, *var;

 while ((start = strstr(new_location, "${")) &&
        (end = strchr(start + 2, '}'))) {
  *start = *end = 0;
  var = getenv(start + 2);
  snprintf(expanded, sizeof expanded, "%s%s%s",
    new_location, var ? var : "", end + 1);
  strcpy(new_location, expanded);
 }

 return new_location;
}
