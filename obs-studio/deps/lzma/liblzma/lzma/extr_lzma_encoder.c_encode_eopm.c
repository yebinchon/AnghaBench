
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {size_t pos_mask; size_t state; int * is_rep; int rc; int ** is_match; } ;
typedef TYPE_1__ lzma_coder ;


 int MATCH_LEN_MIN ;
 int UINT32_MAX ;
 int match (TYPE_1__*,size_t const,int ,int ) ;
 int rc_bit (int *,int *,int) ;

__attribute__((used)) static void
encode_eopm(lzma_coder *coder, uint32_t position)
{
 const uint32_t pos_state = position & coder->pos_mask;
 rc_bit(&coder->rc, &coder->is_match[coder->state][pos_state], 1);
 rc_bit(&coder->rc, &coder->is_rep[coder->state], 0);
 match(coder, pos_state, UINT32_MAX, MATCH_LEN_MIN);
}
