
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 int * php_addcslashes_str (char*,int ,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static zend_string* _pdo_pgsql_escape_credentials(char *str)
{
 if (str) {
  return php_addcslashes_str(str, strlen(str), "\\'", sizeof("\\'"));
 }

 return ((void*)0);
}
