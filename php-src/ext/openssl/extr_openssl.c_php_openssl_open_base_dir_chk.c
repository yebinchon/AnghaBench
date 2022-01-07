
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ php_check_open_basedir (char*) ;

__attribute__((used)) inline static int php_openssl_open_base_dir_chk(char *filename)
{
 if (php_check_open_basedir(filename)) {
  return -1;
 }

 return 0;
}
