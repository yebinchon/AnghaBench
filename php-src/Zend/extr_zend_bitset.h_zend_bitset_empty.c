
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* zend_bitset ;
typedef size_t uint32_t ;



__attribute__((used)) static inline int zend_bitset_empty(zend_bitset set, uint32_t len)
{
 uint32_t i;
 for (i = 0; i < len; i++) {
  if (set[i]) {
   return 0;
  }
 }
 return 1;
}
