
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int FILE ;


 int * _wfopen (char const*,char*) ;
 int bfree (char*) ;
 int * fopen (char*,char const*) ;
 int os_utf8_to_wcs_ptr (char const*,int ,char**) ;
 int os_wcs_to_utf8_ptr (char const*,int ,char**) ;

FILE *os_wfopen(const wchar_t *path, const char *mode)
{
 FILE *file = ((void*)0);

 if (path) {







  char *mbs_path;

  os_wcs_to_utf8_ptr(path, 0, &mbs_path);
  file = fopen(mbs_path, mode);
  bfree(mbs_path);

 }

 return file;
}
