
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ MIN (scalar_t__,int ) ;
 int UINT8_MAX ;
 size_t ZSTR_LEN (int *) ;
 int * ZSTR_VAL (int *) ;
 scalar_t__ is_placeholder (int ) ;

__attribute__((used)) static size_t browscap_compute_contains(
  zend_string *pattern, size_t start_pos,
  uint16_t *contains_start, uint8_t *contains_len) {
 size_t i = start_pos;

 for (; i < ZSTR_LEN(pattern); i++) {
  if (!is_placeholder(ZSTR_VAL(pattern)[i])) {


   if (i + 1 < ZSTR_LEN(pattern) &&
     !is_placeholder(ZSTR_VAL(pattern)[i + 1])) {
    break;
   }
  }
 }
 *contains_start = (uint16_t)i;


 for (; i < ZSTR_LEN(pattern); i++) {
  if (is_placeholder(ZSTR_VAL(pattern)[i])) {
   break;
  }
 }
 *contains_len = (uint8_t)MIN(i - *contains_start, UINT8_MAX);
 return i;
}
