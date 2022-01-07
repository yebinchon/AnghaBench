
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int ssize_t ;


 int stat (char*,struct stat*) ;

ssize_t get_file_size(char *name)
{
 struct stat st;
 int err;

 err = stat(name, &st);
 if (err)
  return -1;

 return st.st_size;
}
