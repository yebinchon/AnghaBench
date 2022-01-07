
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* pg_strdup (char*) ;
 int strcat (char*,char const*) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char const*) ;
 char* strstr (char*,char const*) ;

void
replace_string(char *string, const char *replace, const char *replacement)
{
 char *ptr;

 while ((ptr = strstr(string, replace)) != ((void*)0))
 {
  char *dup = pg_strdup(string);

  strlcpy(string, dup, ptr - string + 1);
  strcat(string, replacement);
  strcat(string, dup + (ptr - string) + strlen(replace));
  free(dup);
 }
}
