
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int probability ;
struct TYPE_5__ {size_t read_pos; size_t read_ahead; int * buffer; } ;
typedef TYPE_1__ lzma_mf ;
struct TYPE_6__ {int* reps; int state; int rc; int literal_pos_mask; int literal_context_bits; int literal; } ;
typedef TYPE_2__ lzma_coder ;


 scalar_t__ is_literal_state (int ) ;
 int literal_matched (int *,int *,int const,int const) ;
 int * literal_subcoder (int ,int ,int ,int ,int ) ;
 int rc_bittree (int *,int *,int,int const) ;
 int update_literal (int ) ;

__attribute__((used)) static inline void
literal(lzma_coder *coder, lzma_mf *mf, uint32_t position)
{

 const uint8_t cur_byte = mf->buffer[
   mf->read_pos - mf->read_ahead];
 probability *subcoder = literal_subcoder(coder->literal,
   coder->literal_context_bits, coder->literal_pos_mask,
   position, mf->buffer[mf->read_pos - mf->read_ahead - 1]);

 if (is_literal_state(coder->state)) {


  rc_bittree(&coder->rc, subcoder, 8, cur_byte);
 } else {



  const uint8_t match_byte = mf->buffer[
    mf->read_pos - coder->reps[0] - 1
    - mf->read_ahead];
  literal_matched(&coder->rc, subcoder, match_byte, cur_byte);
 }

 update_literal(coder->state);
}
