
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_bool ;
typedef int zend_bitset ;
typedef int uint32_t ;


 int ZEND_BIT_TEST (int ,int ) ;

__attribute__((used)) static inline zend_bool zend_bitset_in(zend_bitset set, uint32_t n)
{
 return ZEND_BIT_TEST(set, n);
}
