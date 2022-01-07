
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* zend_bitset ;
typedef int uint32_t ;


 int ZEND_BITSET_BIT_NUM (int ) ;
 size_t ZEND_BITSET_ELM_NUM (int ) ;
 int Z_UL (int) ;

__attribute__((used)) static inline void zend_bitset_incl(zend_bitset set, uint32_t n)
{
 set[ZEND_BITSET_ELM_NUM(n)] |= Z_UL(1) << ZEND_BITSET_BIT_NUM(n);
}
