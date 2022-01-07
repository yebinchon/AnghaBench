
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int uint8_t ;


 int MIN (size_t,int ) ;
 int UINT8_MAX ;
 size_t ZSTR_LEN (int *) ;
 int * ZSTR_VAL (int *) ;
 scalar_t__ is_placeholder (int ) ;

__attribute__((used)) static uint8_t browscap_compute_prefix_len(zend_string *pattern) {
 size_t i;
 for (i = 0; i < ZSTR_LEN(pattern); i++) {
  if (is_placeholder(ZSTR_VAL(pattern)[i])) {
   break;
  }
 }
 return (uint8_t)MIN(i, UINT8_MAX);
}
