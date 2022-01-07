
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_5__ {scalar_t__ donetuples; scalar_t__ tsm_state; } ;
struct TYPE_4__ {scalar_t__ doneblocks; int nblocks; int firstblock; int lb; scalar_t__ ntuples; int step; int seed; } ;
typedef TYPE_1__ SystemRowsSamplerData ;
typedef int SamplerRandomState ;
typedef TYPE_2__ SampleScanState ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ InvalidBlockNumber ;
 int random_relative_prime (int,int ) ;
 int sampler_random_fract (int ) ;
 int sampler_random_init_state (int ,int ) ;

__attribute__((used)) static BlockNumber
system_rows_nextsampleblock(SampleScanState *node, BlockNumber nblocks)
{
 SystemRowsSamplerData *sampler = (SystemRowsSamplerData *) node->tsm_state;


 if (sampler->doneblocks == 0)
 {

  if (sampler->step == 0)
  {

   SamplerRandomState randstate;


   if (nblocks == 0)
    return InvalidBlockNumber;


   sampler_random_init_state(sampler->seed, randstate);


   sampler->nblocks = nblocks;



   sampler->firstblock = sampler_random_fract(randstate) *
    sampler->nblocks;


   sampler->step = random_relative_prime(sampler->nblocks, randstate);
  }


  sampler->lb = sampler->firstblock;
 }


 if (++sampler->doneblocks > sampler->nblocks ||
  node->donetuples >= sampler->ntuples)
  return InvalidBlockNumber;







 do
 {

  sampler->lb = ((uint64) sampler->lb + sampler->step) % sampler->nblocks;
 } while (sampler->lb >= nblocks);

 return sampler->lb;
}
