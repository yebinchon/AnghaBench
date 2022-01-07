
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int FILE ;


 int CWD_EXPAND ;
 int * VCWD_FOPEN (char const*,char const*) ;
 int efree (char*) ;
 char* expand_filepath_with_mode (char const*,int *,int *,int ,int ) ;
 scalar_t__ php_check_open_basedir (char*) ;
 int strlen (char*) ;
 int * zend_string_init (char*,int ,int ) ;

__attribute__((used)) static FILE *php_fopen_and_set_opened_path(const char *path, const char *mode, zend_string **opened_path)
{
 FILE *fp;

 if (php_check_open_basedir((char *)path)) {
  return ((void*)0);
 }
 fp = VCWD_FOPEN(path, mode);
 if (fp && opened_path) {

  char *tmp = expand_filepath_with_mode(path, ((void*)0), ((void*)0), 0, CWD_EXPAND);
  if (tmp) {
   *opened_path = zend_string_init(tmp, strlen(tmp), 0);
   efree(tmp);
  }
 }
 return fp;
}
