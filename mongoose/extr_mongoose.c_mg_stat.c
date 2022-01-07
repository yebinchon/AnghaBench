
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int cs_stat_t ;


 int ARRAY_SIZE (int *) ;
 int DBG (char*) ;
 int MG_MAX_PATH ;
 int _wstati64 (int *,int *) ;
 int stat (char const*,int *) ;
 int to_wchar (char const*,int *,int ) ;

int mg_stat(const char *path, cs_stat_t *st) {






  return stat(path, st);

}
