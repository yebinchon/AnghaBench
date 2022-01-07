
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int E_WARNING ;
 int FAILURE ;
 int MAXPATHLEN ;
 int PHP_OPENSSL_RAND_ADD_TIME () ;
 char* RAND_file_name (char*,int) ;
 int RAND_write_file (char const*) ;
 int SUCCESS ;
 int php_error_docref (int *,int ,char*) ;
 int php_openssl_store_errors () ;

__attribute__((used)) static int php_openssl_write_rand_file(const char * file, int egdsocket, int seeded)
{
 char buffer[MAXPATHLEN];


 if (egdsocket || !seeded) {


  return FAILURE;
 }
 if (file == ((void*)0)) {
  file = RAND_file_name(buffer, sizeof(buffer));
 }
 PHP_OPENSSL_RAND_ADD_TIME();
 if (file == ((void*)0) || !RAND_write_file(file)) {
  php_openssl_store_errors();
  php_error_docref(((void*)0), E_WARNING, "unable to write random state");
  return FAILURE;
 }
 return SUCCESS;
}
