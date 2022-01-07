
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_bitset ;
typedef int uint32_t ;


 int ZEND_BITSET_ELM_SIZE ;
 int memset (int ,int ,int) ;

__attribute__((used)) static inline void zend_bitset_clear(zend_bitset set, uint32_t len)
{
 memset(set, 0, len * ZEND_BITSET_ELM_SIZE);
}
