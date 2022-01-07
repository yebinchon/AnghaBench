
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 scalar_t__ EXPECTED (unsigned char) ;
 scalar_t__ ZSTR_VAL (int *) ;
 int * zend_string_alloc (size_t,int ) ;
 int zend_string_efree (int *) ;

__attribute__((used)) static zend_string *php_hex2bin(const unsigned char *old, const size_t oldlen)
{
 size_t target_length = oldlen >> 1;
 zend_string *str = zend_string_alloc(target_length, 0);
 unsigned char *ret = (unsigned char *)ZSTR_VAL(str);
 size_t i, j;

 for (i = j = 0; i < target_length; i++) {
  unsigned char c = old[j++];
  unsigned char l = c & ~0x20;
  int is_letter = ((unsigned int) ((l - 'A') ^ (l - 'F' - 1))) >> (8 * sizeof(unsigned int) - 1);
  unsigned char d;


  if (EXPECTED((((c ^ '0') - 10) >> (8 * sizeof(unsigned int) - 1)) | is_letter)) {
   d = (l - 0x10 - 0x27 * is_letter) << 4;
  } else {
   zend_string_efree(str);
   return ((void*)0);
  }
  c = old[j++];
  l = c & ~0x20;
  is_letter = ((unsigned int) ((l - 'A') ^ (l - 'F' - 1))) >> (8 * sizeof(unsigned int) - 1);
  if (EXPECTED((((c ^ '0') - 10) >> (8 * sizeof(unsigned int) - 1)) | is_letter)) {
   d |= l - 0x10 - 0x27 * is_letter;
  } else {
   zend_string_efree(str);
   return ((void*)0);
  }
  ret[i] = d;
 }
 ret[i] = '\0';

 return str;
}
