
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getcwd (char*,size_t) ;

char *os_getcwd(char *path, size_t size)
{
 return getcwd(path, size);
}
