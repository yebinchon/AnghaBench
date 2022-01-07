
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef int hashinput ;
struct TYPE_5__ {scalar_t__ tsm_state; } ;
struct TYPE_4__ {scalar_t__ nextblock; scalar_t__ seed; scalar_t__ cutoff; } ;
typedef TYPE_1__ SystemSamplerData ;
typedef TYPE_2__ SampleScanState ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ DatumGetUInt32 (int ) ;
 scalar_t__ InvalidBlockNumber ;
 int hash_any (unsigned char const*,int) ;

__attribute__((used)) static BlockNumber
system_nextsampleblock(SampleScanState *node, BlockNumber nblocks)
{
 SystemSamplerData *sampler = (SystemSamplerData *) node->tsm_state;
 BlockNumber nextblock = sampler->nextblock;
 uint32 hashinput[2];
 hashinput[1] = sampler->seed;





 for (; nextblock < nblocks; nextblock++)
 {
  uint32 hash;

  hashinput[0] = nextblock;

  hash = DatumGetUInt32(hash_any((const unsigned char *) hashinput,
            (int) sizeof(hashinput)));
  if (hash < sampler->cutoff)
   break;
 }

 if (nextblock < nblocks)
 {

  sampler->nextblock = nextblock + 1;
  return nextblock;
 }


 sampler->nextblock = 0;
 return InvalidBlockNumber;
}
