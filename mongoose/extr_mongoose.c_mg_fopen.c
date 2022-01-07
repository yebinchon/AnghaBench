
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int FILE ;


 int ARRAY_SIZE (int *) ;
 int MG_MAX_PATH ;
 int * _wfopen (int *,int *) ;
 int * fopen (char const*,char const*) ;
 int to_wchar (char const*,int *,int ) ;

FILE *mg_fopen(const char *path, const char *mode) {






  return fopen(path, mode);

}
