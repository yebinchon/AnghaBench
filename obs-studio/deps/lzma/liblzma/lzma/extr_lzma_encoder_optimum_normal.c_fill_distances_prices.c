
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {size_t** pos_slot_prices; size_t dist_table_size; size_t** distances_prices; size_t const pos_special; scalar_t__ match_price_count; int * pos_slot; } ;
typedef TYPE_1__ lzma_coder ;


 size_t ALIGN_BITS ;
 size_t END_POS_MODEL_INDEX ;
 size_t FULL_DISTANCES ;
 size_t LEN_TO_POS_STATES ;
 int POS_SLOT_BITS ;
 size_t START_POS_MODEL_INDEX ;
 size_t get_pos_slot (size_t) ;
 size_t rc_bittree_price (int ,int ,size_t) ;
 size_t rc_bittree_reverse_price (size_t const,size_t const,size_t) ;
 scalar_t__ rc_direct_price (size_t) ;

__attribute__((used)) static void
fill_distances_prices(lzma_coder *coder)
{
 for (uint32_t len_to_pos_state = 0;
   len_to_pos_state < LEN_TO_POS_STATES;
   ++len_to_pos_state) {

  uint32_t *const pos_slot_prices
    = coder->pos_slot_prices[len_to_pos_state];


  for (uint32_t pos_slot = 0;
    pos_slot < coder->dist_table_size; ++pos_slot)
   pos_slot_prices[pos_slot] = rc_bittree_price(
     coder->pos_slot[len_to_pos_state],
     POS_SLOT_BITS, pos_slot);




  for (uint32_t pos_slot = END_POS_MODEL_INDEX;
    pos_slot < coder->dist_table_size; ++pos_slot)
   pos_slot_prices[pos_slot] += rc_direct_price(
     ((pos_slot >> 1) - 1) - ALIGN_BITS);




  for (uint32_t i = 0; i < START_POS_MODEL_INDEX; ++i)
   coder->distances_prices[len_to_pos_state][i]
     = pos_slot_prices[i];
 }




 for (uint32_t i = START_POS_MODEL_INDEX; i < FULL_DISTANCES; ++i) {
  const uint32_t pos_slot = get_pos_slot(i);
  const uint32_t footer_bits = ((pos_slot >> 1) - 1);
  const uint32_t base = (2 | (pos_slot & 1)) << footer_bits;
  const uint32_t price = rc_bittree_reverse_price(
    coder->pos_special + base - pos_slot - 1,
    footer_bits, i - base);

  for (uint32_t len_to_pos_state = 0;
    len_to_pos_state < LEN_TO_POS_STATES;
    ++len_to_pos_state)
   coder->distances_prices[len_to_pos_state][i]
     = price + coder->pos_slot_prices[
      len_to_pos_state][pos_slot];
 }

 coder->match_price_count = 0;
 return;
}
