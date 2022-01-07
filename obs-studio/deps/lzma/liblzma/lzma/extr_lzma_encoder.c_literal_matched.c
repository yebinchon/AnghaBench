
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int probability ;
typedef int lzma_range_encoder ;


 int UINT32_C (int) ;
 int rc_bit (int *,int *,int const) ;

__attribute__((used)) static inline void
literal_matched(lzma_range_encoder *rc, probability *subcoder,
  uint32_t match_byte, uint32_t symbol)
{
 uint32_t offset = 0x100;
 symbol += UINT32_C(1) << 8;

 do {
  match_byte <<= 1;
  const uint32_t match_bit = match_byte & offset;
  const uint32_t subcoder_index
    = offset + match_bit + (symbol >> 8);
  const uint32_t bit = (symbol >> 7) & 1;
  rc_bit(rc, &subcoder[subcoder_index], bit);

  symbol <<= 1;
  offset &= ~(match_byte ^ symbol);

 } while (symbol < (UINT32_C(1) << 16));
}
