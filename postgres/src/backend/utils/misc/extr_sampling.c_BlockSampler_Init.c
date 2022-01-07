
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int randstate; scalar_t__ m; scalar_t__ t; int N; } ;
typedef TYPE_1__* BlockSampler ;
typedef int BlockNumber ;


 int sampler_random_init_state (long,int ) ;

void
BlockSampler_Init(BlockSampler bs, BlockNumber nblocks, int samplesize,
      long randseed)
{
 bs->N = nblocks;





 bs->n = samplesize;
 bs->t = 0;
 bs->m = 0;

 sampler_random_init_state(randseed, bs->randstate);
}
