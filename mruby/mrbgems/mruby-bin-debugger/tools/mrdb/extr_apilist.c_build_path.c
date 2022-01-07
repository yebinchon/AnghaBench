
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;


 int memset (char*,int ,int) ;
 scalar_t__ mrb_malloc (int *,int) ;
 int strcat (char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static char*
build_path(mrb_state *mrb, const char *dir, const char *base)
{
  int len;
  char *path = ((void*)0);

  len = strlen(base) + 1;

  if (strcmp(dir, ".")) {
    len += strlen(dir) + sizeof("/") - 1;
  }

  path = (char*)mrb_malloc(mrb, len);
  memset(path, 0, len);

  if (strcmp(dir, ".")) {
    strcat(path, dir);
    strcat(path, "/");
  }
  strcat(path, base);

  return path;
}
