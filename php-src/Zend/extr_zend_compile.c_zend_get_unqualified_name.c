
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int zend_bool ;


 int ZSTR_LEN (int const*) ;
 char const* ZSTR_VAL (int const*) ;
 char* zend_memrchr (char const*,char,int) ;

__attribute__((used)) static zend_bool zend_get_unqualified_name(const zend_string *name, const char **result, size_t *result_len)
{
 const char *ns_separator = zend_memrchr(ZSTR_VAL(name), '\\', ZSTR_LEN(name));
 if (ns_separator != ((void*)0)) {
  *result = ns_separator + 1;
  *result_len = ZSTR_VAL(name) + ZSTR_LEN(name) - *result;
  return 1;
 }

 return 0;
}
