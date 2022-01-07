
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfree (char*) ;
 char* bmalloc (int) ;
 int os_get_abs_path (char const*,char*,int) ;

char *os_get_abs_path_ptr(const char *path)
{
 char *ptr = bmalloc(512);

 if (!os_get_abs_path(path, ptr, 512)) {
  bfree(ptr);
  ptr = ((void*)0);
 }

 return ptr;
}
