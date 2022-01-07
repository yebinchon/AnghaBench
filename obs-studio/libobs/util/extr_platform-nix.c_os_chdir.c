
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chdir (char const*) ;

int os_chdir(const char *path)
{
 return chdir(path);
}
