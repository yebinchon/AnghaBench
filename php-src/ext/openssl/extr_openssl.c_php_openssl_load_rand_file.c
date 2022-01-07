
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;


 int E_WARNING ;
 int FAILURE ;
 int MAXPATHLEN ;
 scalar_t__ RAND_egd (char const*) ;
 char* RAND_file_name (char*,int) ;
 int RAND_load_file (char const*,int) ;
 scalar_t__ RAND_status () ;
 int SUCCESS ;
 int php_error_docref (int *,int ,char*) ;
 int php_openssl_store_errors () ;

__attribute__((used)) static int php_openssl_load_rand_file(const char * file, int *egdsocket, int *seeded)
{
 char buffer[MAXPATHLEN];

 *egdsocket = 0;
 *seeded = 0;

 if (file == ((void*)0)) {
  file = RAND_file_name(buffer, sizeof(buffer));







 }
 if (file == ((void*)0) || !RAND_load_file(file, -1)) {
  if (RAND_status() == 0) {
   php_openssl_store_errors();
   php_error_docref(((void*)0), E_WARNING, "unable to load random state; not enough random data!");
   return FAILURE;
  }
  return FAILURE;
 }
 *seeded = 1;
 return SUCCESS;
}
