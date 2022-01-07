
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef int hashinput ;
struct TYPE_5__ {scalar_t__ lt; scalar_t__ seed; scalar_t__ cutoff; } ;
struct TYPE_4__ {scalar_t__ tsm_state; } ;
typedef TYPE_1__ SampleScanState ;
typedef scalar_t__ OffsetNumber ;
typedef scalar_t__ BlockNumber ;
typedef TYPE_2__ BernoulliSamplerData ;


 scalar_t__ DatumGetUInt32 (int ) ;
 scalar_t__ FirstOffsetNumber ;
 scalar_t__ InvalidOffsetNumber ;
 int hash_any (unsigned char const*,int) ;

__attribute__((used)) static OffsetNumber
bernoulli_nextsampletuple(SampleScanState *node,
        BlockNumber blockno,
        OffsetNumber maxoffset)
{
 BernoulliSamplerData *sampler = (BernoulliSamplerData *) node->tsm_state;
 OffsetNumber tupoffset = sampler->lt;
 uint32 hashinput[3];


 if (tupoffset == InvalidOffsetNumber)
  tupoffset = FirstOffsetNumber;
 else
  tupoffset++;
 hashinput[0] = blockno;
 hashinput[2] = sampler->seed;





 for (; tupoffset <= maxoffset; tupoffset++)
 {
  uint32 hash;

  hashinput[1] = tupoffset;

  hash = DatumGetUInt32(hash_any((const unsigned char *) hashinput,
            (int) sizeof(hashinput)));
  if (hash < sampler->cutoff)
   break;
 }

 if (tupoffset > maxoffset)
  tupoffset = InvalidOffsetNumber;

 sampler->lt = tupoffset;

 return tupoffset;
}
