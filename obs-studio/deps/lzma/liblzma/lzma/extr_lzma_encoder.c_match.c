
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {size_t const pos_special; size_t const pos_align; size_t* reps; int match_price_count; int align_price_count; int rc; int * pos_slot; int fast_mode; int match_len_encoder; int state; } ;
typedef TYPE_1__ lzma_coder ;


 size_t const ALIGN_BITS ;
 size_t const ALIGN_MASK ;
 size_t const END_POS_MODEL_INDEX ;
 int POS_SLOT_BITS ;
 size_t const START_POS_MODEL_INDEX ;
 size_t get_len_to_pos_state (size_t const) ;
 size_t get_pos_slot (size_t const) ;
 int length (int *,int *,size_t const,size_t const,int ) ;
 int rc_bittree (int *,int ,int ,size_t const) ;
 int rc_bittree_reverse (int *,size_t const,size_t const,size_t const) ;
 int rc_direct (int *,size_t const,size_t const) ;
 int update_match (int ) ;

__attribute__((used)) static inline void
match(lzma_coder *coder, const uint32_t pos_state,
  const uint32_t distance, const uint32_t len)
{
 update_match(coder->state);

 length(&coder->rc, &coder->match_len_encoder, pos_state, len,
   coder->fast_mode);

 const uint32_t pos_slot = get_pos_slot(distance);
 const uint32_t len_to_pos_state = get_len_to_pos_state(len);
 rc_bittree(&coder->rc, coder->pos_slot[len_to_pos_state],
   POS_SLOT_BITS, pos_slot);

 if (pos_slot >= START_POS_MODEL_INDEX) {
  const uint32_t footer_bits = (pos_slot >> 1) - 1;
  const uint32_t base = (2 | (pos_slot & 1)) << footer_bits;
  const uint32_t pos_reduced = distance - base;

  if (pos_slot < END_POS_MODEL_INDEX) {


   rc_bittree_reverse(&coder->rc,
    coder->pos_special + base - pos_slot - 1,
    footer_bits, pos_reduced);
  } else {
   rc_direct(&coder->rc, pos_reduced >> ALIGN_BITS,
     footer_bits - ALIGN_BITS);
   rc_bittree_reverse(
     &coder->rc, coder->pos_align,
     ALIGN_BITS, pos_reduced & ALIGN_MASK);
   ++coder->align_price_count;
  }
 }

 coder->reps[3] = coder->reps[2];
 coder->reps[2] = coder->reps[1];
 coder->reps[1] = coder->reps[0];
 coder->reps[0] = distance;
 ++coder->match_price_count;
}
