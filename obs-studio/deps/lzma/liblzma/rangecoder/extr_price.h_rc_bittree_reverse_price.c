
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int probability ;


 scalar_t__ rc_bit_price (int const,scalar_t__ const) ;

__attribute__((used)) static inline uint32_t
rc_bittree_reverse_price(const probability *const probs,
  uint32_t bit_levels, uint32_t symbol)
{
 uint32_t price = 0;
 uint32_t model_index = 1;

 do {
  const uint32_t bit = symbol & 1;
  symbol >>= 1;
  price += rc_bit_price(probs[model_index], bit);
  model_index = (model_index << 1) + bit;
 } while (--bit_levels != 0);

 return price;
}
