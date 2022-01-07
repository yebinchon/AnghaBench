
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ulong ;
typedef int* zend_bitset ;
typedef size_t uint32_t ;


 int ZEND_BITSET_ELM_SIZE ;
 int Z_UL (int) ;

__attribute__((used)) static inline int zend_bitset_last(zend_bitset set, uint32_t len)
{
 uint32_t i = len;

 while (i > 0) {
  i--;
  if (set[i]) {
   int j = ZEND_BITSET_ELM_SIZE * 8 * i - 1;
   zend_ulong x = set[i];
   while (x != Z_UL(0)) {
    x = x >> Z_UL(1);
    j++;
   }
   return j;
  }
 }
 return -1;
}
