
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int probability ;
struct TYPE_3__ {size_t count; int ** probs; int * symbols; } ;
typedef TYPE_1__ lzma_range_encoder ;



__attribute__((used)) static inline void
rc_bit(lzma_range_encoder *rc, probability *prob, uint32_t bit)
{
 rc->symbols[rc->count] = bit;
 rc->probs[rc->count] = prob;
 ++rc->count;
}
