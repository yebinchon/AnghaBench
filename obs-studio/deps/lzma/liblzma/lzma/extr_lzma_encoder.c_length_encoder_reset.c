
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {int high; int * mid; int * low; int choice2; int choice; } ;
typedef TYPE_1__ lzma_length_encoder ;


 int LEN_HIGH_BITS ;
 int LEN_LOW_BITS ;
 int LEN_MID_BITS ;
 int bit_reset (int ) ;
 int bittree_reset (int ,int ) ;
 int length_update_prices (TYPE_1__*,size_t) ;

__attribute__((used)) static void
length_encoder_reset(lzma_length_encoder *lencoder,
  const uint32_t num_pos_states, const bool fast_mode)
{
 bit_reset(lencoder->choice);
 bit_reset(lencoder->choice2);

 for (size_t pos_state = 0; pos_state < num_pos_states; ++pos_state) {
  bittree_reset(lencoder->low[pos_state], LEN_LOW_BITS);
  bittree_reset(lencoder->mid[pos_state], LEN_MID_BITS);
 }

 bittree_reset(lencoder->high, LEN_HIGH_BITS);

 if (!fast_mode)
  for (size_t pos_state = 0; pos_state < num_pos_states;
    ++pos_state)
   length_update_prices(lencoder, pos_state);

 return;
}
