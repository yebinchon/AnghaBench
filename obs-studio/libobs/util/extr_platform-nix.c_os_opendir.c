
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_dir {char const* path; int * dir; } ;
typedef struct os_dir os_dir_t ;
typedef int DIR ;


 struct os_dir* bzalloc (int) ;
 int * opendir (char const*) ;

os_dir_t *os_opendir(const char *path)
{
 struct os_dir *dir;
 DIR *dir_val;

 dir_val = opendir(path);
 if (!dir_val)
  return ((void*)0);

 dir = bzalloc(sizeof(struct os_dir));
 dir->dir = dir_val;
 dir->path = path;
 return dir;
}
