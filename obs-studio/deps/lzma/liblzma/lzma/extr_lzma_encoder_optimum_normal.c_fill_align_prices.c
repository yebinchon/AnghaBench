
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {scalar_t__ align_price_count; int pos_align; int * align_prices; } ;
typedef TYPE_1__ lzma_coder ;


 int ALIGN_BITS ;
 size_t ALIGN_TABLE_SIZE ;
 int rc_bittree_reverse_price (int ,int ,size_t) ;

__attribute__((used)) static void
fill_align_prices(lzma_coder *coder)
{
 for (uint32_t i = 0; i < ALIGN_TABLE_SIZE; ++i)
  coder->align_prices[i] = rc_bittree_reverse_price(
    coder->pos_align, ALIGN_BITS, i);

 coder->align_price_count = 0;
 return;
}
