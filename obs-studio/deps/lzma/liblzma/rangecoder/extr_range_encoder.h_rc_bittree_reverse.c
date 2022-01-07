
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int probability ;
typedef int lzma_range_encoder ;


 int rc_bit (int *,int *,scalar_t__ const) ;

__attribute__((used)) static inline void
rc_bittree_reverse(lzma_range_encoder *rc, probability *probs,
  uint32_t bit_count, uint32_t symbol)
{
 uint32_t model_index = 1;

 do {
  const uint32_t bit = symbol & 1;
  symbol >>= 1;
  rc_bit(rc, &probs[model_index], bit);
  model_index = (model_index << 1) + bit;
 } while (--bit_count != 0);
}
