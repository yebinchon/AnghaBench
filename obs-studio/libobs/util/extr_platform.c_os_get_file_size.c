
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int FILE ;


 int fclose (int *) ;
 int os_fgetsize (int *) ;
 int * os_fopen (char const*,char*) ;

int64_t os_get_file_size(const char *path)
{
 FILE *f = os_fopen(path, "rb");
 if (!f)
  return -1;

 int64_t sz = os_fgetsize(f);
 fclose(f);

 return sz;
}
