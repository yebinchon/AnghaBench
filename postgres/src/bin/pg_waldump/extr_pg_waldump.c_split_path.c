
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* pg_strdup (char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static void
split_path(const char *path, char **dir, char **fname)
{
 char *sep;


 sep = strrchr(path, '/');


 if (sep != ((void*)0))
 {
  *dir = pg_strdup(path);
  (*dir)[(sep - path) + 1] = '\0';
  *fname = pg_strdup(sep + 1);
 }

 else
 {
  *dir = ((void*)0);
  *fname = pg_strdup(path);
 }
}
