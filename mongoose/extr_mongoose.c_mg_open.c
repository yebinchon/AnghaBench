
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int ARRAY_SIZE (int *) ;
 int MG_MAX_PATH ;
 int _wopen (int *,int,int) ;
 int open (char const*,int,int) ;
 int to_wchar (char const*,int *,int ) ;

int mg_open(const char *path, int flag, int mode) {





  return open(path, flag, mode);

}
