
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef scalar_t__ int64 ;
struct TYPE_5__ {int use_pagemode; scalar_t__ tsm_state; } ;
struct TYPE_4__ {scalar_t__ doneblocks; int lt; scalar_t__ ntuples; int seed; } ;
typedef TYPE_1__ SystemRowsSamplerData ;
typedef TYPE_2__ SampleScanState ;
typedef int Datum ;


 scalar_t__ DatumGetInt64 (int ) ;
 int ERRCODE_INVALID_TABLESAMPLE_ARGUMENT ;
 int ERROR ;
 int InvalidOffsetNumber ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
system_rows_beginsamplescan(SampleScanState *node,
       Datum *params,
       int nparams,
       uint32 seed)
{
 SystemRowsSamplerData *sampler = (SystemRowsSamplerData *) node->tsm_state;
 int64 ntuples = DatumGetInt64(params[0]);

 if (ntuples < 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TABLESAMPLE_ARGUMENT),
     errmsg("sample size must not be negative")));

 sampler->seed = seed;
 sampler->ntuples = ntuples;
 sampler->lt = InvalidOffsetNumber;
 sampler->doneblocks = 0;







 node->use_pagemode = 1;
}
