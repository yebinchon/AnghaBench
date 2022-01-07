
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_bitset ;
typedef int uint32_t ;


 int zend_bitset_excl (int ,int) ;
 int zend_bitset_first (int ,int ) ;

__attribute__((used)) static inline int zend_bitset_pop_first(zend_bitset set, uint32_t len) {
 int i = zend_bitset_first(set, len);
 if (i >= 0) {
  zend_bitset_excl(set, i);
 }
 return i;
}
