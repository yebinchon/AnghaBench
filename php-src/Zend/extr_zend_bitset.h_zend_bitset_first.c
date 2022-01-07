
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* zend_bitset ;
typedef size_t uint32_t ;


 int ZEND_BITSET_ELM_SIZE ;
 int zend_ulong_ntz (scalar_t__) ;

__attribute__((used)) static inline int zend_bitset_first(zend_bitset set, uint32_t len)
{
 uint32_t i;

 for (i = 0; i < len; i++) {
  if (set[i]) {
   return ZEND_BITSET_ELM_SIZE * 8 * i + zend_ulong_ntz(set[i]);
  }
 }
 return -1;
}
