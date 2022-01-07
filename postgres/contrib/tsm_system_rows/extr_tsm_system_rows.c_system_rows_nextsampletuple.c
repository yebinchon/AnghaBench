
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ donetuples; scalar_t__ tsm_state; } ;
struct TYPE_4__ {scalar_t__ lt; scalar_t__ ntuples; } ;
typedef TYPE_1__ SystemRowsSamplerData ;
typedef TYPE_2__ SampleScanState ;
typedef scalar_t__ OffsetNumber ;
typedef int BlockNumber ;


 scalar_t__ FirstOffsetNumber ;
 scalar_t__ InvalidOffsetNumber ;

__attribute__((used)) static OffsetNumber
system_rows_nextsampletuple(SampleScanState *node,
       BlockNumber blockno,
       OffsetNumber maxoffset)
{
 SystemRowsSamplerData *sampler = (SystemRowsSamplerData *) node->tsm_state;
 OffsetNumber tupoffset = sampler->lt;


 if (node->donetuples >= sampler->ntuples)
  return InvalidOffsetNumber;


 if (tupoffset == InvalidOffsetNumber)
  tupoffset = FirstOffsetNumber;
 else
  tupoffset++;


 if (tupoffset > maxoffset)
  tupoffset = InvalidOffsetNumber;

 sampler->lt = tupoffset;

 return tupoffset;
}
