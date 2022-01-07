
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 char* ZSTR_VAL (int *) ;
 char* hexconvtab ;
 int * zend_string_safe_alloc (size_t const,int,int ,int ) ;

__attribute__((used)) static zend_string *php_bin2hex(const unsigned char *old, const size_t oldlen)
{
 zend_string *result;
 size_t i, j;

 result = zend_string_safe_alloc(oldlen, 2 * sizeof(char), 0, 0);

 for (i = j = 0; i < oldlen; i++) {
  ZSTR_VAL(result)[j++] = hexconvtab[old[i] >> 4];
  ZSTR_VAL(result)[j++] = hexconvtab[old[i] & 15];
 }
 ZSTR_VAL(result)[j] = '\0';

 return result;
}
