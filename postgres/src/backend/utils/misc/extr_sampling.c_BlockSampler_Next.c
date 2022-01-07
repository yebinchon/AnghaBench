
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ N; scalar_t__ t; int n; int m; int randstate; } ;
typedef TYPE_1__* BlockSampler ;
typedef scalar_t__ BlockNumber ;


 int Assert (int ) ;
 int BlockSampler_HasMore (TYPE_1__*) ;
 double sampler_random_fract (int ) ;

BlockNumber
BlockSampler_Next(BlockSampler bs)
{
 BlockNumber K = bs->N - bs->t;
 int k = bs->n - bs->m;
 double p;
 double V;

 Assert(BlockSampler_HasMore(bs));

 if ((BlockNumber) k >= K)
 {

  bs->m++;
  return bs->t++;
 }
 V = sampler_random_fract(bs->randstate);
 p = 1.0 - (double) k / (double) K;
 while (V < p)
 {

  bs->t++;
  K--;


  p *= 1.0 - (double) k / (double) K;
 }


 bs->m++;
 return bs->t++;
}
