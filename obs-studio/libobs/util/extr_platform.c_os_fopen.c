
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int FILE ;


 int bfree (int *) ;
 int * fopen (char const*,char const*) ;
 int os_utf8_to_wcs_ptr (char const*,int ,int **) ;
 int * os_wfopen (int *,char const*) ;

FILE *os_fopen(const char *path, const char *mode)
{
 return path ? fopen(path, mode) : ((void*)0);

}
