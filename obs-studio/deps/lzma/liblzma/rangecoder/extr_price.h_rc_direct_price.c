
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint32_t ;


 int const RC_BIT_PRICE_SHIFT_BITS ;

__attribute__((used)) static inline uint32_t
rc_direct_price(const uint32_t bits)
{
  return bits << RC_BIT_PRICE_SHIFT_BITS;
}
