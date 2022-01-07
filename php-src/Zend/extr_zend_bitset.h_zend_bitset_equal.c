
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_bool ;
typedef int zend_bitset ;
typedef int uint32_t ;


 int ZEND_BITSET_ELM_SIZE ;
 scalar_t__ memcmp (int ,int ,int) ;

__attribute__((used)) static inline zend_bool zend_bitset_equal(zend_bitset set1, zend_bitset set2, uint32_t len)
{
    return memcmp(set1, set2, len * ZEND_BITSET_ELM_SIZE) == 0;
}
