
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct stat {int dummy; } ;


 int _wstat (int *,struct stat* const) ;
 int free (int *) ;
 int * r_utf8_to_utf16 (char const*) ;
 int stat (char const*,struct stat* const) ;

__attribute__((used)) static int file_stat (const char *file, struct stat* const pStat) {
 if (!file || !pStat) {
  return -1;
 }
 return stat (file, pStat);

}
