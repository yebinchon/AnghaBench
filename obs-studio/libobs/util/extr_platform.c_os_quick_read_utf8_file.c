
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int * os_fopen (char const*,char*) ;
 int os_fread_utf8 (int *,char**) ;

char *os_quick_read_utf8_file(const char *path)
{
 FILE *f = os_fopen(path, "rb");
 char *file_string = ((void*)0);

 if (!f)
  return ((void*)0);

 os_fread_utf8(f, &file_string);
 fclose(f);

 return file_string;
}
