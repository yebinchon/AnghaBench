
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* skip_drive (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int * strstr (char const*,char*) ;

bool
path_contains_parent_reference(const char *path)
{
 int path_len;

 path = skip_drive(path);

 path_len = strlen(path);





 if (strcmp(path, "..") == 0 ||
  strncmp(path, "../", 3) == 0 ||
  strstr(path, "/../") != ((void*)0) ||
  (path_len >= 3 && strcmp(path + path_len - 3, "/..") == 0))
  return 1;

 return 0;
}
