
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;
typedef int uint32_t ;



__attribute__((used)) static inline uint32_t zend_bitset_len(uint32_t n)
{
 return (n + ((sizeof(zend_long) * 8) - 1)) / (sizeof(zend_long) * 8);
}
