
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 size_t ZSTR_LEN (int *) ;
 int* ZSTR_VAL (int *) ;

__attribute__((used)) static size_t browscap_compute_regex_len(zend_string *pattern) {
 size_t i, len = ZSTR_LEN(pattern);
 for (i = 0; i < ZSTR_LEN(pattern); i++) {
  switch (ZSTR_VAL(pattern)[i]) {
   case '*':
   case '.':
   case '\\':
   case '(':
   case ')':
   case '~':
   case '+':
    len++;
    break;
  }
 }

 return len + sizeof("~^$~")-1;
}
