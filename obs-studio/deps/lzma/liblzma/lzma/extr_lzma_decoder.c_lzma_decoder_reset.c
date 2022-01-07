
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_8__ {unsigned int pb; unsigned int lp; int lc; } ;
typedef TYPE_3__ lzma_options_lzma ;
struct TYPE_7__ {int high; int * mid; int * low; int choice2; int choice; } ;
struct TYPE_6__ {int high; int * mid; int * low; int choice2; int choice; } ;
struct TYPE_9__ {unsigned int pos_mask; unsigned int literal_pos_mask; scalar_t__ len; scalar_t__ offset; scalar_t__ limit; scalar_t__ symbol; int * probs; int sequence; TYPE_2__ rep_len_decoder; TYPE_1__ match_len_decoder; int pos_align; int * pos_special; int * pos_slot; int * is_rep2; int * is_rep1; int * is_rep0; int * is_rep; int ** is_rep0_long; int ** is_match; int rc; scalar_t__ rep3; scalar_t__ rep2; scalar_t__ rep1; scalar_t__ rep0; int state; int literal_context_bits; int literal; } ;
typedef TYPE_4__ lzma_coder ;


 int ALIGN_BITS ;
 size_t END_POS_MODEL_INDEX ;
 size_t FULL_DISTANCES ;
 int LEN_HIGH_BITS ;
 int LEN_LOW_BITS ;
 int LEN_MID_BITS ;
 size_t LEN_TO_POS_STATES ;
 int POS_SLOT_BITS ;
 int SEQ_IS_MATCH ;
 size_t STATES ;
 int STATE_LIT_LIT ;
 int bit_reset (int ) ;
 int bittree_reset (int ,int ) ;
 int literal_init (int ,int ,unsigned int) ;
 int rc_reset (int ) ;

__attribute__((used)) static void
lzma_decoder_reset(lzma_coder *coder, const void *opt)
{
 const lzma_options_lzma *options = opt;





 coder->pos_mask = (1U << options->pb) - 1;


 literal_init(coder->literal, options->lc, options->lp);

 coder->literal_context_bits = options->lc;
 coder->literal_pos_mask = (1U << options->lp) - 1;


 coder->state = STATE_LIT_LIT;
 coder->rep0 = 0;
 coder->rep1 = 0;
 coder->rep2 = 0;
 coder->rep3 = 0;
 coder->pos_mask = (1U << options->pb) - 1;


 rc_reset(coder->rc);


 for (uint32_t i = 0; i < STATES; ++i) {
  for (uint32_t j = 0; j <= coder->pos_mask; ++j) {
   bit_reset(coder->is_match[i][j]);
   bit_reset(coder->is_rep0_long[i][j]);
  }

  bit_reset(coder->is_rep[i]);
  bit_reset(coder->is_rep0[i]);
  bit_reset(coder->is_rep1[i]);
  bit_reset(coder->is_rep2[i]);
 }

 for (uint32_t i = 0; i < LEN_TO_POS_STATES; ++i)
  bittree_reset(coder->pos_slot[i], POS_SLOT_BITS);

 for (uint32_t i = 0; i < FULL_DISTANCES - END_POS_MODEL_INDEX; ++i)
  bit_reset(coder->pos_special[i]);

 bittree_reset(coder->pos_align, ALIGN_BITS);


 const uint32_t num_pos_states = 1U << options->pb;
 bit_reset(coder->match_len_decoder.choice);
 bit_reset(coder->match_len_decoder.choice2);
 bit_reset(coder->rep_len_decoder.choice);
 bit_reset(coder->rep_len_decoder.choice2);

 for (uint32_t pos_state = 0; pos_state < num_pos_states; ++pos_state) {
  bittree_reset(coder->match_len_decoder.low[pos_state],
    LEN_LOW_BITS);
  bittree_reset(coder->match_len_decoder.mid[pos_state],
    LEN_MID_BITS);

  bittree_reset(coder->rep_len_decoder.low[pos_state],
    LEN_LOW_BITS);
  bittree_reset(coder->rep_len_decoder.mid[pos_state],
    LEN_MID_BITS);
 }

 bittree_reset(coder->match_len_decoder.high, LEN_HIGH_BITS);
 bittree_reset(coder->rep_len_decoder.high, LEN_HIGH_BITS);

 coder->sequence = SEQ_IS_MATCH;
 coder->probs = ((void*)0);
 coder->symbol = 0;
 coder->limit = 0;
 coder->offset = 0;
 coder->len = 0;

 return;
}
